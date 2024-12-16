import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
      {super.key,
      required this.onTapped,
      this.width,
      this.height,
      required this.child});

  final VoidCallback onTapped;
  final double? width;
  final double? height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
