import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/shared.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';

class ForYouWidget extends StatelessWidget {
  const ForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
              child: Row(
                children: [
                  ...List.generate(
                    5,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 10.w),
                      height: 100.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              AppAssets.rectangleGrid,
                            ),
                            fit: BoxFit.fill),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 36.h,
                          width: 89.w,
                          child: Center(
                            child: Text(
                              'Quran Knowledge',
                              style: TextStyle(
                                color: AppColors.colorF9F9F9,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
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
          Column(
            children: [
              ...List.generate(
                4,
                (index) => Padding(
                  padding:  EdgeInsets.only(bottom: 10.h),
                  child: SizedBox(
                    height: 420.h,
                    width: 390.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 53.h,
                          width: 390.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 195.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 53.h,
                                      width: 54.w,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 48.h,
                                            width: 48.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            child: const AppImageWidget(
                                              reference: AppAssets.rectangleGrid,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0.h,
                                            right: 0.w,
                                            child: Container(
                                              height: 24.h,
                                              width: 24.w,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle),
                                              child: const Center(
                                                child: AppImageWidget(
                                                    reference:
                                                        AppAssets.userImage),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 41.h,
                                      width: 128.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Quran Knowledge',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.color181C32,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 24.h,
                                            width: 122.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text.rich(
                                                  style: TextStyle(
                                                    fontSize: 8.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  const TextSpan(
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              'Usman Hussaini\n'),
                                                      TextSpan(text: 'Galadima'),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '. 1d',
                                                      style: TextStyle(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 10.w),
                                                    const AppImageWidget(
                                                        reference:
                                                            AppAssets.worldIcon)
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: 24.h,
                                  width: 140.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppIcon(
                                        onTapped: () {},
                                        child: const AppImageWidget(
                                          reference: AppAssets.threeDotsIcon,
                                        ),
                                      ),
                                      AppIcon(
                                        onTapped: () {},
                                        child: const AppImageWidget(
                                          reference: AppAssets.cancelIcon,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        //
                        SizedBox(
                          height: 210.h,
                          width: 390.w,
                          child: Text(
                            'I am grappling with a persistent health issue that resurfaces every few months, yet its underlying cause remains undiagnosed. The reoccurring nature of this disease, coupled with the discomfort it brings, becomes quite distressing at times. So, I asked my respected teacher to pray for me and he advised me to recite Surah Fatiha after every prayer. I never denied the healing power of the Quran but I was just curious about what makes the content of this surah a source of relief from affliction?',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
