import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/theme/app_colors.dart';

class CustomPersonalInfoTField extends StatelessWidget {
  const CustomPersonalInfoTField({
    super.key,
    required this.width,
    required this.hintText,
    required this.obscureText,
    required this.text,
  });
  final double width;
//   final TextEditingController controller;
  final String hintText;
  final String text;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59.h,
      width: width.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.color181C32),
          ),
          Container(
            height: 34.h,
            width: width.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.colorFFFFFF,
                border: Border.all(width: 0.5)),
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                  vertical: 8.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
