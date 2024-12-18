import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class PersonInfoPage extends StatelessWidget {
  const PersonInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _PersonalPageView(),
    );
  }
}

class _PersonalPageView extends StatelessWidget {
  const _PersonalPageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
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
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: const Text(
                        'Save',
                        style: TextStyle(color: AppColors.colorFF8400),
                      ),
                    ),
                  ],
                ),
              ),

              //
              //
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                  height: 427.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 96.h,
                        width: 96.w,
                        child: Stack(
                          children: [
                            AppImageWidget(
                              fit: BoxFit.fill,
                              height: 96.h,
                              width: 96.w,
                              reference: AppAssets.userImage,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: AppColors.colorF9F9F9
                                ),
                                height: 24.h,
                                width: 24.w,
                                child: const Center(
                                  child: AppImageWidget(
                                      reference: AppAssets.midiCameraIcon),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 59.h,
                            width: 185.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'First Name',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.color181C32),
                                ),
                                Container(
                                  height: 34.h,
                                  width: 185.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: AppColors.colorFFFFFF,
                                      border: Border.all(width: 0.5)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Usman',
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 6.w,
                                        vertical: 8.h,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 59.h,
                            width: 185.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Last Name',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.color181C32),
                                ),
                                Container(
                                  height: 34.h,
                                  width: 185.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: AppColors.colorFFFFFF,
                                      border: Border.all(width: 0.5)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Hussaini',
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 6.w,
                                        vertical: 8.h,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      //
                      //
                      SizedBox(
                        height: 59.h,
                        width: 390.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Middle Name',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.color181C32),
                            ),
                            Container(
                              height: 34.h,
                              width: 390.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: AppColors.colorFFFFFF,
                                  border: Border.all(width: 0.5)),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Galadima',
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 6.w,
                                    vertical: 8.h,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      //
                      SizedBox(
                        height: 59.h,
                        width: 390.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.color181C32),
                            ),
                            Container(
                              height: 34.h,
                              width: 390.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: AppColors.colorFFFFFF,
                                  border: Border.all(width: 0.5)),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '08088405841',
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 6.w,
                                    vertical: 8.h,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      //
                      SizedBox(
                        height: 59.h,
                        width: 390.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.color181C32),
                            ),
                            Container(
                              height: 34.h,
                              width: 390.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: AppColors.colorFFFFFF,
                                  border: Border.all(width: 0.5)),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'saniahmadliman@gmail.com',
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 6.w,
                                    vertical: 8.h,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      //
                      SizedBox(
                        height: 59.h,
                        width: 390.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.color181C32),
                            ),
                            Container(
                              height: 34.h,
                              width: 390.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: AppColors.colorFFFFFF,
                                  border: Border.all(width: 0.5)),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '**********',
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 6.w,
                                    vertical: 8.h,
                                  ),
                                ),
                              ),
                            )
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
    );
  }
}
