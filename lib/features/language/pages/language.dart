import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _LanguagePageView(),
    );
  }
}

class _LanguagePageView extends StatelessWidget {
  const _LanguagePageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 20.w, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  const Text('Language'),
                  AppIcon(
                    onTapped: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: AppColors.colorFF8400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44.h,
              width: 390.w,
              child: Row(
                children: [
                  const AppImageWidget(reference: AppAssets.selectLanIcon),
                  SizedBox(width: 15.w),
                  const Text('Select Language'),
                ],
              ),
            ),
            //
            SizedBox(
              height: 442.h,
              width: 288.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 240.h,
                    width: 146.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'App Inteface',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Language : ',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'English',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Arabic',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Hausa',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'French',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Spanish',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Urdu',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Malay',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Turkish',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ), //
                  SizedBox(
                    height: 192.h,
                    width: 288.w,
                    child: Text(
                      '''Quran Translation Language:
English (Pick from multiple translations, like Sahih International, Yusuf Ali)
Arabic (Original text)
French (Muhammad Hamidullah)
Urdu (Fateh Muhammad Jalandhry)
Malay (Abdullah Muhammad Basmeih)
Others...''',
                      style: TextStyle(
                        height: 2,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //
            //
          ],
        ),
      ),
    );
  }
}
