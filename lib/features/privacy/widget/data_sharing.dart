
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class PrivacyDataSharingWidget extends StatelessWidget {
  const PrivacyDataSharingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172.h,
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
                      const AppImageWidget(reference: AppAssets.shareIcon),
                      SizedBox(width: 15.w),
                      Text(
                        'Data sharing',
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
            height: 108.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your data is never shared to third parties without your\n  your consent, expect :',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '• To comply with legal requirements.',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '• To protect quranpally right or property.',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '• With trusted partners for app improvement (e.g analytics\n   tools) under strict confidentiality agreement.',
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