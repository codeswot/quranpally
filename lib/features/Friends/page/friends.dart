import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/authentication/widgets/custom_text_form_field.dart';
import 'package:quranpally/shared/widgets/app_button.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _FriendsPageView(),
    );
  }
}

class _FriendsPageView extends StatelessWidget {
  const _FriendsPageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 44.h,
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your friends',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: const AppImageWidget(
                        reference: AppAssets.settingsIcon,
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.colorD5DAE1,
                    borderRadius: BorderRadius.circular(11.0.r),
                  ),
                  height: 37.h,
                  width: 390.w,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 20.w),
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search friends',
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              //
              //
              SizedBox(
                height: 131.h,
                width: 390.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      height: 37.h,
                      width: 390.w,
                      decoration: BoxDecoration(
                        color: AppColors.colorF3F3F5,
                        borderRadius: BorderRadius.circular(11.05.r),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.h.w),
                            height: 28.h,
                            width: 28.w,
                            decoration: BoxDecoration(
                              color: AppColors.colorFF8400,
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: const AppImageWidget(
                              reference: AppAssets.addUserIcon,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Your friends',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      height: 37.h,
                      width: 390.w,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.h.w),
                            height: 28.h,
                            width: 28.w,
                            decoration: BoxDecoration(
                              color: AppColors.colorF3F3F5,
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: const AppImageWidget(
                              reference: AppAssets.peopleIcon,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Your groups',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    AppPrimaryButton(
                      height: 37.h,
                      width: 390.w,
                      backgroundColor: AppColors.colorFF8400.withOpacity(0.45),
                      title: '+ Follow new friends',
                      onTap: () {
                        context.router.push(
                          const AddFriendsPageRoute(),
                        );
                      },
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1,785 friends',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.color181C32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: Text(
                        'Sort',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorFF8400,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              Column(
                children: [
                  ...List.generate(
                    15,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: SizedBox(
                        height: 48.h,
                        width: 390.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 48.h,
                                  width: 48.w,
                                  child: const AppImageWidget(
                                    reference: AppAssets.friendsIcon,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bashir Ibrahim',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color181C32,
                                      ),
                                    ),
                                    Text(
                                      '34 mutual friends',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color181C32,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            AppIcon(
                              onTapped: () {},
                              child: const AppImageWidget(
                                reference: AppAssets.threeDotsIcon,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
