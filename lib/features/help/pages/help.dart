import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _HelpPageView(),
    );
  }
}

class _HelpPageView extends StatelessWidget {
  const _HelpPageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
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
                    Text(
                      'Help',
                      style: TextStyle(
                        color: AppColors.color181C32,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Text(
                  'How can we assist you?',
                  style: TextStyle(
                    color: AppColors.color181C32,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: SizedBox(
                  height: 172.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 42.h,
                        width: 214.w,
                        child: Text(
                          'Frequently Asked Questions (FAQs):',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: SizedBox(
                          height: 110.w,
                          width: 390.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '• How do i create my account.',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '• How do i change my language setting.',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '• How do i save my refletions.',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '• How do i access multiple quran translations.',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '• How do i do if the app is not loading properly.',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
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
              //
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: SizedBox(
                  height: 133.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Contact Us:',
                        style: TextStyle(
                          color: AppColors.color181C32,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: SizedBox(
                          height: 92.h,
                          width: 390.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                  children: const [
                                    TextSpan(text: '• Email: '),
                                    TextSpan(
                                      text: 'support@quranpally.com',
                                      style: TextStyle(
                                          color: AppColors.color0071DB),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                  children: const [
                                    TextSpan(text: '• Phone: '),
                                    TextSpan(
                                      text: '+123 456 7890',
                                      style: TextStyle(
                                          color: AppColors.color0071DB),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                  children: const [
                                    TextSpan(text: '• Support Hours: '),
                                    TextSpan(
                                      text:
                                          '9 AM - 5 PM (GMT), Monday to Friday',
                                    ),
                                  ],
                                ),
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
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: SizedBox(
                  height: 97.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Community Help:',
                        style: TextStyle(
                          color: AppColors.color181C32,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: SizedBox(
                          height: 56.h,
                          width: 390.w,
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                              children: const [
                                TextSpan(
                                  text:
                                      '• Join the discussion in our online forums and ask questions\n or share your experiences.',
                                ),
                                TextSpan(
                                  text: 'Community Forum',
                                  style:
                                      TextStyle(color: AppColors.color0071DB),
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
                padding: EdgeInsets.only(bottom: 15.h),
                child: SizedBox(
                  height: 151.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'App Tutorials:',
                        style: TextStyle(
                          color: AppColors.color181C32,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: SizedBox(
                          height: 110.h,
                          width: 390.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '• Watch helpful videos guides to make most of the app"s\n   feature',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                '• Getting Started',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color0071DB,
                                ),
                              ),
                              Text(
                                '• How to Reflect on Verse',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color0071DB,
                                ),
                              ),
                              Text(
                                '• Using Commentaries Effectively',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color0071DB,
                                ),
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
              SizedBox(
                width: 390.w,
                height: 77.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Report a Problem',
                      style: TextStyle(
                        color: AppColors.color181C32,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Encountered an issue? Submit a report to our support team.',
                            style: TextStyle(
                              color: AppColors.color181C32,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '  • Submit a Bug Report.',
                            style: TextStyle(
                              color: AppColors.color0071DB,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
