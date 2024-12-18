
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class MenuFourCards extends StatelessWidget {
  const MenuFourCards({
    super.key,
    required this.onTapped,
    required this.icon,
    required this.text,
  });
  final VoidCallback onTapped;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 5.h,
          horizontal: 10.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.colorFFFFFF,
        ),
        height: 61.h,
        width: 185.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             AppImageWidget(reference: icon),
            Text(
              text,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
