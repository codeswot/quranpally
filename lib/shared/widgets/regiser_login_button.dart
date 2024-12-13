
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({
    super.key, required this.onTapped, required this.text,
  });

  final VoidCallback onTapped;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell( 
        onTap: onTapped,
      child: Container(
        height: 60.h,
        width: 357.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFFF8400)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

