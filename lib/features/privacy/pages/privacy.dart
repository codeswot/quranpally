import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _PrivacyPageView(),
    );
  }
}

class _PrivacyPageView extends StatelessWidget {
  const _PrivacyPageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
        child: SingleChildScrollView(
          child: Column(
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
                      'Privacy',
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
                        reference: AppAssets.searchIcon2,
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: SizedBox(
                  height: 54.h,
                  width: 390.w,
                  child: Text(
                    'At QuranPally, we prioritize your privacy and are committed to protecting your personal information. This privacy policy outlines how we collect, use, and safeguard your data.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.color181C32,
                    ),
                  ),
                ),
              ),
              //
              //
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: SizedBox(
                  height: 44.h,
                  width: 390.w,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const AppImageWidget(
                                reference: AppAssets.profileIcon1),
                            SizedBox(width: 15.w),
                            Text(
                              'Personal Information',
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
                              reference: AppAssets.arrowOutIcon),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              //
              Padding(
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
                                  const AppImageWidget(
                                      reference: AppAssets.barChatIcon),
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
                              'We collect two types of information',
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
              ),
              //
              //
              //
              Padding(
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
                                  const AppImageWidget(
                                      reference: AppAssets.settingsIcon),
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
                              'We collect two types of information',
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
              ),
              //
              //
              SizedBox(
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
                                const AppImageWidget(
                                    reference: AppAssets.shareIcon),
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
                            'We collect two types of information',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '• and profile picture (optonal) when you created an\n   account',
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
              //
              //
              SizedBox(
                height: 136.h,
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
                                const AppImageWidget(
                                    reference: AppAssets.lockIcon),
                                SizedBox(width: 15.w),
                                Text(
                                  'Security',
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
                      height: 92.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'We use encryption and secure servers to protect your data. However, no method of transmission over the internet is 100% secure, so we encourage users to take steps to safeguard their information.',
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
              //
              //
              SizedBox(
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
                                const AppImageWidget(
                                    reference: AppAssets.userRightIcon),
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
                            'We use encryption and secure servers to protect your data. However, no method of transmission over the internet is 100% secure, so we encourage users to take steps to safeguard their information.',
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
              //
              //
              SizedBox(
                height: 136.h,
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
                                const AppImageWidget(
                                    reference: AppAssets.lockIcon),
                                SizedBox(width: 15.w),
                                Text(
                                  'Cookies and\nTracking',
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
                      height: 54.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'We may use cookies or similar technologies to track app usage and enhance user experience. You can manage cookie preferences through your device settings.',
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
              //
              //
              SizedBox(
                height: 136.h,
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
                                const AppImageWidget(
                                    reference: AppAssets.policyIcon),
                                SizedBox(width: 15.w),
                                Text(
                                  'Changes to Privacy\nPolicy',
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
                      height: 54.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'We may use cookies or similar technologies to track app usage and enhance user experience. You can manage cookie preferences through your device settings.',
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
            ],
          ),
        ),
      ),
    );
  }
}
