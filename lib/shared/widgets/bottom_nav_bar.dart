import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/enum/nav_bar_enums.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({
    super.key,
    required this.selectedNav,
  });

  final BottomNavBarEnums selectedNav;

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
            InkWell(
              onTap: () {
                context.router.push(
                  const HomePageRoute(),
                );
              },
              child: Image.asset(
                AppAssets.homeIcon,
                height: 24.h,
                width: 24.w,
                color: selectedNav == BottomNavBarEnums.home
                    ? AppColors.colorFF8400
                    : null,
              ),
            ),
            InkWell(
                  onTap: () {
                  context.router.push(
                    const QuranHomePageRoute(),
                  );
                },
              child: Image.asset(
                AppAssets.bookIconn,
                height: 24.h,
                width: 24.w,
                color: selectedNav == BottomNavBarEnums.quran
                    ? AppColors.colorFF8400
                    : null,
              ),
            ),
            InkWell(
              //     onTap: () {
              //     context.router.push(
              //       const HomePageRoute(),
              //     );
              //   },
              child: Image.asset(
                AppAssets.commentsIcon,
                height: 24.h,
                width: 24.w,
                color: selectedNav == BottomNavBarEnums.reflections
                    ? AppColors.colorFF8400
                    : null,
              ),
            ),
            InkWell(
              //     onTap: () {
              //     context.router.push(
              //       const HomePageRoute(),
              //     );
              //   },
              child: Image.asset(
                AppAssets.profileIcon,
                height: 24.h,
                width: 24.w,
                color: selectedNav == BottomNavBarEnums.profile
                    ? AppColors.colorFF8400
                    : null,
              ),
            ),
            InkWell(
              onTap: () {
                context.router.push(
                  const SettingsPageRoute(),
                );
              },
              child: Image.asset(
                AppAssets.settingsIcon,
                height: 24.h,
                width: 24.w,
                color: selectedNav == BottomNavBarEnums.settings
                    ? AppColors.colorFF8400
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
