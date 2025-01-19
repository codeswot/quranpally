import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/home/widget/home_search_bar.dart';
import 'package:quranpally/features/home/widget/last_read_surah.dart';
import 'package:quranpally/features/home/widget/reflection_card.dart';
import 'package:quranpally/shared/enum/nav_bar_enums.dart';
import 'package:quranpally/shared/shared.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/bottom_nav_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomePageView(),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.w, top: 9.h),
                child: AppImageWidget(
                  height: 24.h,
                  reference: AppAssets.logo1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SizedBox(
                  height: 65.39.h,
                  width: 430.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeSearchBar(
                        width: 322.w,
                        height: 33.39.h,
                        hintText: 'What is in your mind ?',
                        icon: Image.asset(
                          AppAssets.searchIcon,
                          height: 13.30.h,
                          color: AppColors.colorFF8400,
                        ),
                      ),
                      //
                      AppIcon(
                        onTapped: () {
                          context.router.push(const NotificationPageRoute());
                        },
                        width: 24.w,
                        height: 24.h,
                        child: Image.asset(AppAssets.notificationIcon),
                      ),
                      AppIcon(
                        onTapped: () {
                          context.router.push(const MenuPageRoute());
                        },
                        width: 24.w,
                        height: 24.h,
                        child: Image.asset(AppAssets.menuIcon),
                      ),
                    ],
                  ),
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: SizedBox(
                  height: 271.h,
                  width: 750.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Last read',
                        style: TextStyle(
                          color: AppColors.color181C32,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      //
                      SizedBox(
                        height: 65.h,
                        child: const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              LastReadSurah(),
                              LastReadSurah(),
                              LastReadSurah(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65.h,
                        child: const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              LastReadSurah(),
                              LastReadSurah(),
                              LastReadSurah(),
                            ],
                          ),
                        ),
                      ),
                      //
                      SizedBox(
                        height: 36.h,
                        width: 390.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppImageWidget(
                                height: 36.h,
                                width: 36.w,
                                fit: BoxFit.fill,
                                reference: AppAssets.userImage),
                            HomeSearchBar(
                              color: const Color(0xFFF3F3F5),
                              width: 346.w,
                              height: 36.h,
                              hintText: 'Write reflection...',
                              icon: Image.asset(
                                AppAssets.microPhoneIcon,
                                height: 24.h,
                                width: 24.w,
                              ),
                              onTapped: () {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 18.h,
                            width: 85.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(fontSize: 11.sp),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 18.h,
                                    width: 36.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: AppColors.colorFF8400,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Post',
                                        style: TextStyle(
                                            fontSize: 11.sp,
                                            color: AppColors.colorFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.only(bottom: 10.h, left: 16.w),
                child: Text(
                  'Feeds',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.color181C32),
                ),
              ),
              Column(
                children: [
                  ...List.generate(
                    6,
                    (index) => const ReflectionCard(),
                  ),
                ],
              ),
              //
            ],
          ),
        ),
      ),
      //
      //
      bottomNavigationBar: const BotNavBar(
        selectedNav: BottomNavBarEnums.home,
      ),
    );
  }
}
