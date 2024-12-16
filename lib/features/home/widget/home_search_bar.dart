
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required this.width,
    required this.height,
    required this.hintText,
    required this.icon,
    this.onTapped,  this.color,
  });

  final double width;
  final double height;
  final String hintText;
  final Widget icon;
  final VoidCallback? onTapped;
  final Color? color;
//   final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
      color: color,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 0.r)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 8),
          suffixIcon: InkWell(onTap: onTapped, child: icon),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        ),
      ),
    );
  }
}
