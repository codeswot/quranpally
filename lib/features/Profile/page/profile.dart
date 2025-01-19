import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/enum/nav_bar_enums.dart';
import 'package:quranpally/shared/widgets/app_button.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';
import 'package:quranpally/shared/widgets/bottom_nav_bar.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ProfilePageView(),
      bottomNavigationBar: BotNavBar(
        selectedNav: BottomNavBarEnums.profile,
      ),
    );
  }
}

class _ProfilePageView extends StatelessWidget {
  const _ProfilePageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      context.router.replace(const ReflectionsRoutePage());
                    },
                    child: const AppImageWidget(
                      reference: AppAssets.menuIcon,
                    ),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AppIcon(
                    onTapped: () {},
                    child: const AppImageWidget(
                      reference: AppAssets.profileChangeIcon,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300.h,
              width: 430.w,
              child: Stack(
                children: [
                  Positioned(
                    top: 0.h,
                    child: Container(
                      height: 110.h,
                      width: 430.w,
                      color: AppColors.color000000,
                    ),
                  ),
                  Positioned(
                    top: 45.h,
                    left: 20.w,
                    child: SizedBox(
                      height: 96.h,
                      width: 96.w,
                      child: Stack(
                        children: [
                          AppImageWidget(
                            height: 96.h,
                            width: 96.w,
                            reference: AppAssets.userImage,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.colorF3F3F5,
                              ),
                              child: Center(
                                child: AppIcon(
                                  onTapped: () {},
                                  child: const AppImageWidget(
                                    reference: AppAssets.midiCameraIcon,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    child: Container(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
                      height: 190.h,
                      width: 430.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'usman hussaini',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '2.7k followers',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Text(
                                '70 following',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                            width: 206.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppImageWidget(
                                  height: 24.h,
                                  width: 24.w,
                                  reference: AppAssets.follwersIcon,
                                ),
                                AppImageWidget(
                                  height: 24.h,
                                  width: 24.w,
                                  reference: AppAssets.follwersIcon1,
                                ),
                                AppImageWidget(
                                  height: 24.h,
                                  width: 24.w,
                                  reference: AppAssets.follwersIcon2,
                                ),
                                AppImageWidget(
                                  height: 24.h,
                                  width: 24.w,
                                  reference: AppAssets.follwersIcon3,
                                ),
                                AppImageWidget(
                                  height: 24.h,
                                  width: 24.w,
                                  reference: AppAssets.follwersIcon4,
                                ),
                                AppImageWidget(
                                  height: 24.h,
                                  width: 24.w,
                                  reference: AppAssets.follwersIcon5,
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
                          AppPrimaryButton(
                            title: 'Edit',
                            height: 41.h,
                            width: 390.w,
                            backgroundColor: AppColors.colorFF8400,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.only(bottom: 16.h, top: 5.h),
              child: SizedBox(
                height: 41.h,
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.colorFF8400,
                      ),
                    ),
                    const Text('|'),
                    Text(
                      'Popular',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    const Text('|'),
                    Text(
                      'My notes',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ),
            //
            //
            Padding(
              padding:  EdgeInsets.only(bottom: 15.h),
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
            SizedBox(height: 10.h),
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
          ],
        ),
      ),
    );
  }
}
