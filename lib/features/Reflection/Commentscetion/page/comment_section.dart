import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class CommentSectionPage extends StatelessWidget {
  const CommentSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _CommentSectionPageView(),
    );
  }
}

class _CommentSectionPageView extends StatelessWidget {
  const _CommentSectionPageView();

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
                        context.router.replace(const ReflectionsRoutePage());
                      },
                      child: const AppImageWidget(
                        reference: AppAssets.arrowBackIcon,
                      ),
                    ),
                    Text(
                      'Comments',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              //
              //
              SizedBox(
                height: 497.h,
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
              //
              //
              SizedBox(height: 10.h),
              Column(
                children: [
                  ...List.generate(
                    3,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: InkWell(
                        onTap: () {
                          context.router.replace(
                            const RepliesPageRoute(),
                          );
                        },
                        child: SizedBox(
                          height: 150.h,
                          width: 390.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppImageWidget(
                                reference: AppAssets.userImage,
                                height: 24.h,
                                width: 24.w,
                              ),
                              SizedBox(
                                height: 150.h,
                                width: 356.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                    SizedBox(
                                      height: 96.h,
                                      child: Text(
                                        "Masha Allah, This verse underscores the deep spiritual significance of the Kaaba as the first house of worship established for humanity, symbolizing unity and guidance for all people. It reminds Muslims of the sacred connection to their faith's origins and the importance of the Kaaba as a center of worship and a source of blessings.",
                                        style: TextStyle(
                                          height: 1.1,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.color181C32,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Row(
                                      children: [
                                        Text(
                                          '20 hrs ',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color181C32,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Text(
                                            'Reply',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.colorFF8400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
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
