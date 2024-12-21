import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/menu/widgets/four_cards.dart';
import 'package:quranpally/features/menu/widgets/menu_card_widget.dart';
import 'package:quranpally/shared/shared.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MenuPageView();
  }
}

class _MenuPageView extends StatelessWidget {
  const _MenuPageView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 54.h,
                width: 430.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(
                      onTapped: () {
                        context.router.push(const HomePageRoute());
                      },
                      child: const AppImageWidget(
                        reference: AppAssets.arrowBackIcon,
                      ),
                    ),
                    Text(
                      'Menu',
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.colorFFFFFF,
                ),
                height: 53.h,
                width: 390.w,
                child: SizedBox(
                  height: 33.h,
                  width: 155.w,
                  child: Row(
                    children: [
                      AppImageWidget(
                        reference: AppAssets.userImage,
                        height: 24.h,
                        width: 24.w,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'usman hussini',
                            style: TextStyle(
                              color: AppColors.colorFF8400,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.router.push(
                                const PersonalInfoPageRoute(),
                              );
                            },
                            child: Text(
                              'View your Profile',
                              style: TextStyle(
                                color: AppColors.color181C32,
                                fontWeight: FontWeight.w400,
                                fontSize: 8.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //
              MenuCardWidget(
                onTapped: () {},
                height: 44.h,
                width: 390.w,
                icon: AppAssets.inviteIcon,
                text: 'Invite friends',
                color: AppColors.color181C32,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuFourCards(
                    onTapped: () {},
                    icon: AppAssets.commentsIcon,
                    text: 'Reflections',
                  ),
                  MenuFourCards(
                    onTapped: () {},
                    icon: AppAssets.bookIconn,
                    text: 'Commentaries',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuFourCards(
                    onTapped: () {},
                    icon: AppAssets.peopleIcon,
                    text: 'Groups & Communities',
                  ),
                  MenuFourCards(
                    onTapped: () {},
                    icon: AppAssets.usersCheckedIcon,
                    text: 'Friends',
                  ),
                ],
              ),
              //
              //
              SizedBox(
                width: 430.w,
                height: 515.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 42.h,
                      width: 121.w,
                      child: Text(
                        'Settings & privacy',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    MenuCardWidget(
                      onTapped: () {
                        context.router.push(const SettingsPageRoute());
                      },
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.settingsIcon,
                      text: 'Settings',
                      color: AppColors.color181C32,
                    ),
                    MenuCardWidget(
                      onTapped: () {
                        context.router.push(
                          const PrivacyPageRoute(),
                        );
                      },
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.lockIcon,
                      text: 'Privacy',
                      color: AppColors.color181C32,
                    ),
                    MenuCardWidget(
                      onTapped: () {
                        context.router.push(const AboutPageRoute());
                      },
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.aboutIcon,
                      text: 'About',
                      color: AppColors.color181C32,
                    ),
                    MenuCardWidget(
                      onTapped: () {
                        context.router.push(
                          const LAnguagePageRoute(),
                        );
                      },
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.globeIcon,
                      text: 'Language',
                      color: AppColors.color181C32,
                    ),
                    MenuCardWidget(
                      onTapped: () {
                        context.router.push(
                          const UpdatePageRoute(),
                        );
                      },
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.uploadIcon,
                      text: 'Update',
                      color: AppColors.color181C32,
                    ),
                    Text(
                      'Help & support',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.color181C32),
                    ),
                    MenuCardWidget(
                      onTapped: () {
                        context.router.push(
                          const HelpPageRoute(),
                        );
                      },
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.heplIcon,
                      text: 'Help',
                      color: AppColors.color181C32,
                    ),
                    MenuCardWidget(
                      onTapped: () {
                        context.router.push(
                          const ReportPageRoute(),
                        );
                      },
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.reportIcon,
                      text: 'Report a problem',
                      color: AppColors.color181C32,
                    ),
                    MenuCardWidget(
                      onTapped: () {},
                      height: 44.h,
                      width: 390.w,
                      icon: AppAssets.logoutIcon,
                      text: 'Log Out',
                      color: AppColors.colorF00000,
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
