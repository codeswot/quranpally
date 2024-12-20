import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class PrivacyCookiesAndTrackingWidget extends StatelessWidget {
  const PrivacyCookiesAndTrackingWidget({
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
            height: 62.h,
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
                        'Cookies and\nTracking',
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
            height: 54.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We may use cookies or similar technologies to track app usage and enhance user experience. You can manage cookie preferences through your device settings.',
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