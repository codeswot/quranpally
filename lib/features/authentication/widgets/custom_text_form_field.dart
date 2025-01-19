import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.obscureText,
  });
  final String hintText;
//   final TextEditingController controller;
  final bool obscureText;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 357.w,
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 15.w,
          ),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:  BorderSide(
              width: 2.w,
              color:  const Color(0xFFFF8400),
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
