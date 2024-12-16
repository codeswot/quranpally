
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      child: SizedBox(
        height: 37.h,
        width: 430.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              onTapped: () {},
              child: AppImageWidget(
                fit: BoxFit.fill,
                reference: AppAssets.homeIcon,
                width: 24.w,
                height: 24.h,
              ),
            ),
            AppIcon(
              width: 24.w,
              height: 24.h,
              onTapped: () {},
              child: const AppImageWidget(
                reference: AppAssets.bookIconn,
              ),
            ),
            AppIcon(
              width: 24.w,
              height: 24.h,
              onTapped: () {},
              child: const AppImageWidget(
                reference: AppAssets.commentsIcon,
              ),
            ),
            AppIcon(
              width: 24.w,
              height: 24.h,
              onTapped: () {},
              child: const AppImageWidget(
                reference: AppAssets.profileIcon,
              ),
            ),
            AppIcon(
              width: 24.w,
              height: 24.h,
              onTapped: () {},
              child: const AppImageWidget(
                reference: AppAssets.settingsIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}