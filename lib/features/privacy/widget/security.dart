import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class PrivacySecurityWidget extends StatelessWidget {
  const PrivacySecurityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 136.h,
      width: 390.w,
      child: Column(
        children: [
          SizedBox(
            height: 44.h,
            width: 390.w,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const AppImageWidget(reference: AppAssets.lockIcon),
                      SizedBox(width: 15.w),
                      Text(
                        'Security',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.color181C32,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  AppIcon(
                    height: 24.h,
                    width: 24.w,
                    onTapped: () {},
                    child: const AppImageWidget(
                        reference: AppAssets.arrowDownIcon),
                  ),
                ],
              ),
            ),
          ),
          //
          SizedBox(
            width: 390.w,
            height: 92.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We use encryption and secure servers to protect your data. However, no method of transmission over the internet is 100% secure, so we encourage users to take steps to safeguard their information.',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}