import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class CommunitiesFeatures extends StatelessWidget {
  const CommunitiesFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _CommunitiesFeaturesView(),
    );
  }
}

class _CommunitiesFeaturesView extends StatelessWidget {
  const _CommunitiesFeaturesView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 44.h,
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 24.h,
                      width: 170.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppIcon(
                            onTapped: () {},
                            child: const AppImageWidget(
                              reference: AppAssets.arrowBackIcon,
                            ),
                          ),
                          AppIcon(
                            onTapped: () {},
                            child: const AppImageWidget(
                              reference: AppAssets.menuIcon,
                            ),
                          ),
                          Text(
                            'QuranConnect',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                      width: 60.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppIcon(
                            onTapped: () {},
                            child: const AppImageWidget(
                              reference: AppAssets.searchIcon2,
                            ),
                          ),
                          AppIcon(
                            onTapped: () {
                              context.router.push(
                                const FriendsPageRoute(),
                              );
                            },
                            child: const AppImageWidget(
                              reference: AppAssets.shareIcon,
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
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: SizedBox(
                height: 225.h,
                width: 430.w,
                child: const AppImageWidget(
                  reference: AppAssets.quranPages,
                ),
              ),
            ),
            //
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: SizedBox(
                height: 97.h,
                width: 250.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'QuranConnect',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.color181C32,
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                      width: 220.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Public Community',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                          const Text('.'),
                          Text(
                            '1.1M members',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              AppImageWidget(
                                height: 24.h,
                                width: 24.w,
                                reference: AppAssets.follwersIcon,
                              ),
                              AppImageWidget(
                                height: 24.h,
                                width: 24.w,
                                reference: AppAssets.follwersIcon,
                              ),
                              AppImageWidget(
                                height: 24.h,
                                width: 24.w,
                                reference: AppAssets.follwersIcon,
                              ),
                              AppImageWidget(
                                height: 24.h,
                                width: 24.w,
                                reference: AppAssets.follwersIcon,
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.w),
                            height: 22.h,
                            width: 65.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: AppColors.colorFF8400,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppIcon(
                                      onTapped: () {},
                                      child: Icon(
                                        Icons.add,
                                        size: 14.h.w,
                                        color: AppColors.colorFFFFFF,
                                      )),
                                  Text(
                                    'Invite',
                                    style: TextStyle(
                                      color: AppColors.colorFFFFFF,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                width: 390.w,
                height: 58.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 36.h,
                      width: 390.w,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 36.h,
                            width: 36.w,
                            child: const AppImageWidget(
                                reference: AppAssets.userImage),
                          ),
                          Container(
                            height: 36.h,
                            width: 346.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.05.r),
                              color: AppColors.colorF3F3F5,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.w, vertical: 14.h),
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
                                    borderRadius: BorderRadius.circular(8.r)),
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
            ),
            //
            //
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 610.h,
                width: 390.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 316.h,
                      width: 390.w,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 48.h,
                            width: 390.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 34.h,
                                  width: 148.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      AppImageWidget(
                                        reference: AppAssets.userImage,
                                        height: 24.h,
                                        width: 24.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Imrahn Samir',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.colorFF8400,
                                            ),
                                          ),
                                          Text(
                                            '4 Days',
                                            style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.color181C32,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
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
                          //
                          SizedBox(
                            height: 268.h,
                            width: 390.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            '''I am grappling with a persistent health issue that resurfaces every few months, yet its underlying cause remains undiagnosed. The reoccurring nature of this disease, coupled with the discomfort it brings, becomes quite distressing at times. So, I asked my respected teacher to pray for me and he advised me to recite Surah Fatiha after every prayer. I never denied the healing power of the Quran but I was just curious about what makes the content of this surah a source of relief from affliction?
Closing your eyes and trusting in the divine word is also a sign of strong faith ''',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '... continue reading',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.colorFF8400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '#QuraniPally#TheAllHealing',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.color000000,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 15.w),
                      height: 261.h,
                      width: 390.w,
                      color: AppColors.color491702,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: AppImageWidget(
                              reference: AppAssets.frameImage,
                              height: 48.h,
                              width: 48.w,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Chapter 9 : At-Tawba, Verse: 39',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.colorFFFFFF,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'If you do not march forth, He will afflict...',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.colorFFFFFF,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38.h,
                            width: 335.w,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 16.h,
                                  width: 335.w,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 2.h,
                                        width: 335.w,
                                        color: AppColors.colorF3F3F5,
                                      ),
                                      Positioned(
                                        left: 0,
                                        child: Container(
                                          height: 6.h,
                                          width: 167.5.w,
                                          color: AppColors.colorF9F9F9,
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          height: 40.h,
                                          width: 40.w,
                                          decoration: const BoxDecoration(
                                              color: AppColors.colorF3F3F5,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '2:25',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: AppColors.colorF9F9F9,
                                      ),
                                    ),
                                    Text(
                                      '4:02',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.colorF9F9F9,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 48.h,
                            width: 130.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppIcon(
                                  onTapped: () {},
                                  child: const AppImageWidget(
                                      reference: AppAssets.repeatIcon),
                                ),
                                Container(
                                  height: 48.h,
                                  width: 48.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.colorFF8400),
                                  child: Center(
                                    child: AppIcon(
                                      onTapped: () {},
                                      child: const AppImageWidget(
                                          reference:
                                              AppAssets.pauseAndPlayIcon),
                                    ),
                                  ),
                                ),
                                AppIcon(
                                  onTapped: () {},
                                  child: const AppImageWidget(
                                      reference: AppAssets.shuffleIcon),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    SizedBox(
                      height: 24.h,
                      width: 390.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 59.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppIcon(
                                  onTapped: () {},
                                  child: const AppImageWidget(
                                    reference: AppAssets.bigLikeIcon,
                                  ),
                                ),
                                const Text('553'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 59.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppIcon(
                                  onTapped: () {
                                    context.router.replace(
                                      const CommentSectionRoutePage(),
                                    );
                                  },
                                  child: const AppImageWidget(
                                    reference: AppAssets.bigCommentIcon,
                                  ),
                                ),
                                const Text('164'),
                              ],
                            ),
                          ),
                          AppIcon(
                            onTapped: () {},
                            child: const AppImageWidget(
                              reference: AppAssets.shareIcon,
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
          ],
        ),
      ),
    );
  }
}
