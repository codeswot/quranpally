
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';


class PrivacyUserRightWidget extends StatelessWidget {
  const PrivacyUserRightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154.h,
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
                      const AppImageWidget(reference: AppAssets.userRightIcon),
                      SizedBox(width: 15.w),
                      Text(
                        'User Rights',
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
            height: 110.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You have the right to :',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '• Access and update your personal information.',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '• Request deletion of your account and associated data.',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '• Opt-out of non-essential communications (e.g\n  promotional updates).',
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




