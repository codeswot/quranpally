import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/privacy/widget/cookies_tracking.dart';
import 'package:quranpally/features/privacy/widget/data_sharing.dart';
import 'package:quranpally/features/privacy/widget/data_usuage.dart';
import 'package:quranpally/features/privacy/widget/info_use.dart';
import 'package:quranpally/features/privacy/widget/privacy_policy.dart';
import 'package:quranpally/features/privacy/widget/security.dart';
import 'package:quranpally/features/privacy/widget/user_right.dart';
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
                          onTapped: () {
                            context.router.push(
                              const PersonalInfoPageRoute(),
                            );
                          },
                          child: const AppImageWidget(
                              reference: AppAssets.arrowOutIcon),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const PrivacyDataUsuageWidget(),

              const PrivacyInformationWidget(),

              const PrivacyDataSharingWidget(),

              const PrivacySecurityWidget(),

              const PrivacyUserRightWidget(),

              const PrivacyCookiesAndTrackingWidget(),

              const PrivacyPolicyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
