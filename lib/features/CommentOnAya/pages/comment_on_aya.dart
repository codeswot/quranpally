import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class CommentOnAyaPage extends StatelessWidget {
  const CommentOnAyaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _CommentOnAyaPageView(),
    );
  }
}

class _CommentOnAyaPageView extends StatelessWidget {
  const _CommentOnAyaPageView();

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
                    AppIcon(
                      onTapped: () {
                        context.router.push(const QuranDetailsPageRoute());
                      },
                      child: const AppImageWidget(
                        reference: AppAssets.arrowBackIcon,
                      ),
                    ),
                    Text(
                      'Comment for Al-Fatiha [1:1]',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color181C32,
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
                  height: 237.h,
                  width: 390.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppImageWidget(
                            reference: AppAssets.userImage,
                            height: 36.h,
                            width: 36.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(10.h.w),
                            color: AppColors.colorF3F3F5,
                            height: 183.h,
                            width: 346.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 32.h,
                                  width: 326.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Imran Samir',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.colorFF8400,
                                        ),
                                      ),
                                      Text(
                                        '2 months ago',
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.color181C32,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 89.h,
                                  width: 326.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Could you addأَعُوذُ بِاللَّهِ مِنَ الشَّيْطانِ الرَّجِيْمِ  A'oothu billaahi minash-Shaytaanir-rajeem I seek refuge with Allah against the Satan, the outcast. as the first ayah in fatiha",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.color181C32,
                                        ),
                                      ),
                                      Text(
                                        'Read more',
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                          color: AppColors.color181C32,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 24.h,
                                  width: 106.w,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 24.h,
                                          width: 48.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AppIcon(
                                                onTapped: () {},
                                                child: const AppImageWidget(
                                                  reference: AppAssets.bigLikeIcon,
                                                ),
                                              ),
                                              Text(
                                                '120',
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.color0071DB,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24.h,
                                          width: 44.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              AppIcon(
                                                onTapped: () {},
                                                child: const AppImageWidget(
                                                  reference:
                                                      AppAssets.bigCommentIcon,
                                                ),
                                              ),
                                              Text(
                                                '113',
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.color0071DB,
                                                ),
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
                        ],
                      ),
                      SizedBox(height: 6.h),
                      SizedBox(
                        width: 346.w,
                        height: 48.h,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 24.h,
                              width: 346.w,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 24.h,
                                    width: 24.w,
                                    child: const AppImageWidget(
                                        reference: AppAssets.userImage),
                                  ),
                                  Container(
                                    height: 24.h,
                                    width: 314.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11.05.r),
                                      color: AppColors.colorF3F3F5,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 20.w, vertical: 11.h),
                                          border: InputBorder.none,
                                          hintText: 'Leave a comment',
                                          hintStyle: TextStyle(fontSize: 8.sp)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                height: 18.h,
                                width: 85.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppIcon(
                                      onTapped: () {},
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.color181C32,
                                        ),
                                      ),
                                    ),
                                    AppIcon(
                                      onTapped: () {},
                                      child: Container(
                                        height: 18.h,
                                        width: 36.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.colorFF8400,
                                            borderRadius:
                                                BorderRadius.circular(8.r)),
                                        child: Center(
                                          child: Text(
                                            'Post',
                                            style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.colorFFFFFF,
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
                    ],
                  ),
                ),
              ),
              //
              //
              SizedBox(
                child: Column(
                  children: [
                    ...List.generate(
                      4,
                      (index) => Padding(
                        padding: EdgeInsets.only(left: 36.w,bottom: 16.h),
                        child: SizedBox(
                          height: 222.h,
                          width: 390.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 36.h,
                                width: 346.w,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 36.h,
                                      width: 36.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.r),
                                      ),
                                      child: const AppImageWidget(
                                          reference: AppAssets.quranIcon),
                                    ),
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Quran Pally Foundation',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.colorFF8400,
                                          ),
                                        ),
                                        Text(
                                          '2 months ago',
                                          style: TextStyle(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color181C32,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              SizedBox(
                                height: 142.h,
                                width: 346.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 124.h,
                                      width: 346.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Jazakallahu Khairan for your suggestion. We appreciate your engagement and dedication to improving the user experience on our platform.',
                                            style: TextStyle(
                                              color: AppColors.color181C32,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Regarding the above comment',
                                            style: TextStyle(
                                              color: AppColors.color181C32,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطانِ الرَّجِيْمِ...',
                                            style: TextStyle(
                                              color: AppColors.color181C32,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Read more',
                                      style: TextStyle(
                                        color: AppColors.color181C32,
                                        fontSize: 8.sp,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 24.h,
                                width: 346.w,
                                child: Row(
                                  children: [
                                    AppIcon(
                                      onTapped: () {},
                                      child: const AppImageWidget(
                                          reference: AppAssets.bigCommentIcon),
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Reply',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
    );
  }
}
