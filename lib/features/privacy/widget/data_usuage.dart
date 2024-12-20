
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class PrivacyDataUsuageWidget extends StatelessWidget {
  const PrivacyDataUsuageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
        height: 190.h,
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
                        const AppImageWidget(reference: AppAssets.barChatIcon),
                        SizedBox(width: 15.w),
                        Text(
                          'Usage Data',
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
                    'We collect two types of information :',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• Personal information: includes your name, email adress,\n   and profile picture (optonal) when you created an\n   account',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• Data Usage: we gather non-personal data, such as app\n   usage, device information, and interaction patterns for\n   improving user experience',
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
