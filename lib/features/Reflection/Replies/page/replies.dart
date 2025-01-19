import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class RepliesPage extends StatelessWidget {
  const RepliesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _RepliesPageView(),
    );
  }
}

class _RepliesPageView extends StatelessWidget {
  const _RepliesPageView();

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
                      'Replies',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: SizedBox(
                  height: 16.h,
                  width: 390.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Replies to Imrahn’s comment on Imrahn’s reflect',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View reflect',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.colorFF8400,
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
                height: 149.h,
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
                      height: 149.h,
                      width: 356.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            height: 98.h,
                            child: Text(
                              "Masha Allah, This verse underscores the deep spiritual significance of the Kaaba as the first house of worship established for humanity, symbolizing unity and guidance for all people. It reminds Muslims of the sacred connection to their faith's origins and the importance of the Kaaba as a center of worship and a source of blessings.",
                              style: TextStyle(
                                //   height: 1.1,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color181C32,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                            width: 356.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                ),
                                AppIcon(
                                  onTapped: () {},
                                  child: const AppImageWidget(
                                    reference: AppAssets.audionIcon,
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
              Column(
                children: [
                  ...List.generate(
                    4,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: SizedBox(
                        height: 200.h,
                        width: 358.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: const AppImageWidget(
                                  reference: AppAssets.quranIcon),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Quran Pally Foundation',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.colorFF8400,
                                  ),
                                ),
                                SizedBox(
                                  height: 147.h,
                                  width: 322.w,
                                  child: Text(
                                    "It is important to note that the Quran as we have it today was revealed to our beloved Prophet Muhammad (SAW) over 23 years, with each ayah and surah placed in a specific order by the instruction of the Prophet (SAW) as guided by Archangel Gabriel. The organization of the Quran, including its verses and surahs, was completed at the time of revelation and has been preserved exactly as it was received.",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24.h,
                                  width: 322.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
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
                                      ),
                                      AppIcon(
                                        onTapped: () {},
                                        child: const AppImageWidget(
                                          reference: AppAssets.audionIcon,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
