import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';

class AppImageWidget extends StatelessWidget {
  const AppImageWidget({
    required this.reference,
    this.placeholder,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    super.key,
  });

  final String reference;
  final Widget? placeholder;
  final double? width;
  final double? height;
  final BoxFit fit;

  bool get _isURL => reference.startsWith('http://') || reference.startsWith('https://');
  bool get _isSVG => reference.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    return _buildImage();
  }

  Widget _buildImage() {
    if (_isURL) {
      return _buildNetworkImage();
    }

    if (_isSVG) {
      return _buildSvgImage();
    }

    return _buildLocalImage();
  }

  Widget _buildNetworkImage() {
    return CachedNetworkImage(
      imageUrl: reference,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) => _buildPlaceholder(),
      errorWidget: (context, url, error) => _buildErrorWidget(),
    );
  }

  Widget _buildSvgImage() {
    if (_isURL) {
      return SvgPicture.network(
        reference,
        width: width,
        height: height,
        fit: fit,
        placeholderBuilder: (context) => _buildPlaceholder(),
      );
    } else {
      return SvgPicture.asset(
        reference,
        width: width,
        height: height,
        fit: fit,
        placeholderBuilder: (context) => _buildPlaceholder(),
      );
    }
  }

  Widget _buildLocalImage() {
    return Image.asset(
      reference,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return _buildFileImage();
      },
    );
  }

  Widget _buildFileImage() {
    return Image.file(
      File(reference),
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return _buildErrorWidget();
      },
    );
  }

  Widget _buildPlaceholder() {
    return placeholder ?? const Center(child: CircularProgressIndicator());
  }

  Widget _buildErrorWidget() {
    return Container(
      width: width,
      height: height,
      color: Colors.grey[200],
      child: const Icon(Icons.broken_image, color: Colors.grey),
    );
  }
}
