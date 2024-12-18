
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget({
    super.key,
    this.height,
    this.width,
    this.onTapped,
    required this.icon,
    required this.text,
    required this.color,
  });
  final double? height;
  final double? width;
  final VoidCallback? onTapped;
  final String icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.colorFFFFFF,
        ),
        height: height,
        width: width,
        child: SizedBox(
          height: 24.h,
          width: 155.w,
          child: Row(
            children: [
              AppImageWidget(
                reference: icon,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.fill,
              ),
              SizedBox(width: 10.w),
              Text(
                text,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
