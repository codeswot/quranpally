import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/settings/widget/settings_theme_card.dart';
import 'package:quranpally/shared/enum/nav_bar_enums.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';
import 'package:quranpally/shared/widgets/bottom_nav_bar.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _SettingsPageView(),
    );
  }
}

class _SettingsPageView extends StatelessWidget {
  const _SettingsPageView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 44.h,
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(
                      onTapped: () {
                        context.router.push(const MenuPageRoute());
                      },
                      child: const AppImageWidget(
                        reference: AppAssets.arrowBackIcon,
                      ),
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: AppImageWidget(
                        height: 24.h,
                        width: 24.w,
                        reference: AppAssets.serachIcon,
                      ),
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: SizedBox(
                  height: 68.h,
                  width: 390.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Theme',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.color181C32,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Container(
                          color: AppColors.colorF3F3F5,
                          height: 37.h,
                          width: 390.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ThemeAndFontCard(
                                onTapped: () {},
                                text: 'Auto',
                                icon: null,
                              ),
                              ThemeAndFontCard(
                                onTapped: () {},
                                color: AppColors.colorFFFFFF,
                                text: 'Light',
                                icon: const AppImageWidget(
                                  reference: AppAssets.lighttIcon,
                                ),
                              ),
                              ThemeAndFontCard(
                                onTapped: () {},
                                text: 'Dark',
                                icon: null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              SizedBox(
                height: 68.h,
                width: 390.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quran fonts',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.color181C32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Container(
                        color: AppColors.colorF3F3F5,
                        height: 37.h,
                        width: 390.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 23.h,
                              width: 53.w,
                              child: Center(
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Amiri',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 13.w),
                              decoration: BoxDecoration(
                                  color: AppColors.colorFFFFFF,
                                  borderRadius: BorderRadius.circular(8.r)),
                              height: 23.h,
                              width: 88.w,
                              child: Center(
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'IndoPak',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 23.h,
                              child: Center(
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Tajweed',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              //
              //
              SizedBox(
                height: 38.h,
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Style',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color181C32,
                      ),
                    ),
                    //
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      decoration: BoxDecoration(
                        color: AppColors.colorF3F3F5,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      height: 37.h,
                      width: 187.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'King Fahad Complex',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color181C32,
                            ),
                          ),
                          AppIcon(
                            onTapped: () {},
                            child: const AppImageWidget(
                              reference: AppAssets.arrowDownIcon,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: SizedBox(
                  height: 38.h,
                  width: 390.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Font Size',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.color181C32,
                        ),
                      ),
                      //
                      SizedBox(
                        height: 37.h,
                        width: 73.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppIcon(
                              onTapped: () {},
                              child: const AppImageWidget(
                                reference: AppAssets.minusIcon,
                              ),
                            ),
                            const Text('3'),
                            AppIcon(
                              onTapped: () {},
                              child: const AppImageWidget(
                                reference: AppAssets.plusIcon,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              //
              //
              //
              SizedBox(
                height: 38.h,
                width: 390.w,
                child: Center(
                  child: Text(
                    'King Fahad Complex (V1 and V2) Fonts provide higher quality but take longer to load.',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.sp,
                        height: 1.3),
                  ),
                ),
              ), //
              //
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.only(top: 16.h, right: 10.w),
                decoration: BoxDecoration(
                  color: AppColors.colorF3F3F5,
                  borderRadius: BorderRadius.circular(11.r),
                ),
                height: 120.h,
                width: 390.w,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'َﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْمَحْلا',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.color181C32),
                  ),
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: SizedBox(
                  height: 202.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Word By Word',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: AppColors.color181C32),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.w),
                        height: 92.h,
                        width: 155.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 24.h,
                              width: 138.w,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 24.h,
                                    width: 24.w,
                                    child: Checkbox(
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Translation',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color181C32),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Transliteration',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.color181C32),
                                )),
                            SizedBox(
                              height: 24.h,
                              width: 138.w,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 24.h,
                                    width: 24.w,
                                    child: Checkbox(
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    'Recitation',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color181C32),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Text(
                        'Word by word reciter: Shaikh Wisam Sharieff. Click on a word to listen to its recitation.',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BotNavBar(
        selectedNav: BottomNavBarEnums.settings,
      ),
    );
  }
}
