
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class LoginWithCard extends StatelessWidget {
  const LoginWithCard({
    super.key,
    required this.image,
    required this.onTapped,
  });
  final String image;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        height: 44.h,
        width: 60.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFECECEC)),
        child: Center(
          child: AppImageWidget(reference: image),
        ),
      ),
    );
  }
}
