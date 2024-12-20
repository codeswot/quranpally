import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class PrivacyInformationWidget extends StatelessWidget {
  const PrivacyInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
        height: 208.h,
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
                        const AppImageWidget(reference: AppAssets.settingsIcon),
                        SizedBox(width: 15.w),
                        Text(
                          'How We Use Your\nInformation',
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
              height: 146.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We use your data to :',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• Provide personalized content, such as recommended\n   commentaries and reflections.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• Improve the app"s functionality based on user behaviour\n   and feedback.',
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
      ),
    );
  }
}