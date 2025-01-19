import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/enum/nav_bar_enums.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';
import 'package:quranpally/shared/widgets/bottom_nav_bar.dart';

@RoutePage()
class ReflectionPage extends StatelessWidget {
  const ReflectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BotNavBar(
        selectedNav: BottomNavBarEnums.reflections,
      ),
      body: _ReflectionsPageView(),
    );
  }
}

class _ReflectionsPageView extends StatelessWidget {
  const _ReflectionsPageView();

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
                        context.router.push(const QuranReadingPageRoute());
                      },
                      child: const AppImageWidget(
                        reference: AppAssets.menuIcon,
                      ),
                    ),
                    Text(
                      'Reflections',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: const AppImageWidget(
                        reference: AppAssets.serachIcon,
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Container(
                  height: 37.h,
                  width: 390.w,
                  decoration: BoxDecoration(
                      color: AppColors.colorFFFFFF,
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search by name @galadima, tag #t...',
                        hintStyle: TextStyle(fontSize: 12.sp),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 15.w),
                        prefixIcon: const Icon(Icons.search)),
                  ),
                ),
              ),
              //
              //
              SizedBox(
                height: 41.h,
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Feed',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.colorFF8400,
                      ),
                    ),
                    const Text('|'),
                    Text(
                      'Trending',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    const Text('|'),
                    Text(
                      'Latest',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
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
              SizedBox(
                height: 497.h,
                width: 390.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        ],
                      ),
                    ),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: Container(
                        height: 125.h,
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 16.w),
                        width: 390.w,
                        color: AppColors.color491702,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppImageWidget(
                              reference: AppAssets.frameImage,
                              height: 48.h,
                              width: 48.w,
                            ),
                            Text(
                              'Chapter 9 : At-Tawba, Verse: 39',
                              style: TextStyle(
                                height: 1.8.h,
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'If you do not march forth, He will afflict...',
                              style: TextStyle(
                                height: 1.8.h,
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
              //
              SizedBox(height: 16.h),
              SizedBox(
                height: 295.h,
                width: 390.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 34.h,
                      width: 390.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 34.h,
                            width: 148.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                AppImageWidget(
                                  reference: AppAssets.userImage,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 15.w),
                      height: 261.h,
                      width: 390.w,
                      color: AppColors.color491702,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AppImageWidget(
                            reference: AppAssets.frameImage,
                            height: 48.h,
                            width: 48.w,
                          ),
                          Text(
                            'Chapter 9 : At-Tawba, Verse: 39',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorFFFFFF,
                            ),
                          ),
                          Text(
                            'If you do not march forth, He will afflict...',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorFFFFFF,
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
