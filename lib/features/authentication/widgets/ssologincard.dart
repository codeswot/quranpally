
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class SSOLoginCard extends StatelessWidget {
  const SSOLoginCard({
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
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.colorECECEC),
        child: Center(
          child: AppImageWidget(reference: image),
        ),
      ),
    );
  }
}
