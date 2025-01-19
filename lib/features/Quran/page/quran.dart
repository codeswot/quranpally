import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/enum/nav_bar_enums.dart';
import 'package:quranpally/shared/shared.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/bottom_nav_bar.dart';

@RoutePage()
class QuranHomePage extends StatelessWidget {
  const QuranHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _QuranHomePageView(),
      bottomNavigationBar: BotNavBar(
        selectedNav: BottomNavBarEnums.quran,
      ),
    );
  }
}

class _QuranHomePageView extends StatelessWidget {
  const _QuranHomePageView();

  @override
  Widget build(BuildContext context) {
    final data = [
      'Surah',
      'par',
      'Page',
      'Hijb',
    ];

    int selectedData = 0;

    final List<Map<dynamic, dynamic>> quranSurahDetails = [
      {
        'number': '1',
        'surah': 'Al-Fatiah',
        'arabicText': 'ةحتافلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: true,
      },
      {
        'number': '1',
        'surah': 'Al-Fatiah',
        'arabicText': 'ةحتافلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '1',
        'surah': 'Al-Fatiah',
        'arabicText': 'ةحتافلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '1',
        'surah': 'Al-Baqarah',
        'arabicText': 'ةرقبلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '1',
        'surah': 'Al-Baqarah',
        'arabicText': 'ةرقبلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '1',
        'surah': 'Al-Baqarah',
        'arabicText': 'ةرقبلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '3',
        'surah': 'Al-Imran',
        'arabicText': 'ناﺮﻤﻋ لآ',
        'verse': '200 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '3',
        'surah': 'Al-Imran',
        'arabicText': 'ناﺮﻤﻋ لآ',
        'verse': '200 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '3',
        'surah': 'Al-Imran',
        'arabicText': 'ناﺮﻤﻋ لآ',
        'verse': '200 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '4',
        'surah': 'Al-Nisa',
        'arabicText': 'ءاسنلا',
        'verse': '176 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '4',
        'surah': 'Al-Nisa',
        'arabicText': 'ءاسنلا',
        'verse': '176 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '4',
        'surah': 'Al-Nisa',
        'arabicText': 'ءاسنلا',
        'verse': '176 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '1',
        'surah': 'Al-Fatiah',
        'arabicText': 'ةحتافلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '1',
        'surah': 'Al-Fatiah',
        'arabicText': 'ةحتافلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '2',
        'surah': 'Al-baqarah',
        'arabicText': 'ةرقبلا',
        'verse': '7 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '4',
        'surah': 'Al-Imran',
        'arabicText': 'ناﺮﻤﻋ لآ',
        'verse': '200 verses',
        'place': 'Meccan',
        bool: false,
      },
      {
        'number': '3',
        'surah': 'Al-Nisa',
        'arabicText': 'ءاسنلا',
        'verse': '176 verses',
        'place': 'Meccan',
        bool: false,
      },
    ];

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 390.w,
                height: 50.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 175.w,
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(height: 1.7.h),
                          children: [
                            TextSpan(
                              text: 'Asslamualaikum\n',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Usman Hussaini',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    SizedBox(
                      height: 48.h,
                      width: 106.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.color491702.withOpacity(0.25),
                            ),
                            child: Center(
                              child: AppIcon(
                                onTapped: () {},
                                child: const AppImageWidget(
                                  reference: AppAssets.searchIcon2,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 48.h,
                            width: 48.w,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: const AppImageWidget(
                              reference: AppAssets.userImage,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.h),
              Container(
                height: 131.h,
                width: 390.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.5.r),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.color4F200D,
                      AppColors.colorFF8400,
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0.h,
                      right: 0.w,
                      child: AppImageWidget(
                        fit: BoxFit.fill,
                        reference: AppAssets.quranImage,
                        height: 100.21.h,
                        width: 196.1.w,
                      ),
                    ),
                    Positioned(
                      top: 0.h,
                      right: 123.54.w,
                      child:
                          const AppImageWidget(reference: AppAssets.cloudImage),
                    ),
                    Positioned(
                      top: 7.h,
                      right: -35.54.w,
                      child:
                          const AppImageWidget(reference: AppAssets.cloudImage),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 19.h, bottom: 19.h, left: 23.93.w),
                          child: InkWell(
                            onTap: () {
                              context.router.push(
                                const QuranReadingPageRoute(),
                              );
                            },
                            child: SizedBox(
                              height: 93.h,
                              width: 107.w,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 5.w),
                                    height: 21.h,
                                    width: 107.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const AppImageWidget(
                                            reference: AppAssets.lastReadIcon),
                                        Text(
                                          'Last Read',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColors.colorFFFFFF,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 48.h,
                                    width: 106.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Al-Fatiah',
                                          style: TextStyle(
                                            color: AppColors.colorFFFFFF,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Ayah No: 1',
                                          style: TextStyle(
                                            color: AppColors.colorFFFFFF,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                      ],
                    ),
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 16.h),
                child: SizedBox(
                  height: 52.h,
                  width: 390.w,
                  child: Row(
                    children: [
                      ...List.generate(
                        data.length,
                        (index) => InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 52.h,
                            width: 97.5.w,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 13.h),
                                  child: Text(
                                    data[index],
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: selectedData == index
                                          ? AppColors.color491702
                                          : AppColors.color8789A3,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 2.h,
                                  width: 95.74.w,
                                  color: selectedData == index
                                      ? AppColors.color491702
                                      : null,
                                ),
                              ],
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
                    quranSurahDetails.length,
                    (index) => Container(
                      margin: EdgeInsets.only(bottom: 16.h),
                      height: 62.h,
                      width: 390.w,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 41.h,
                            width: 390.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 41.h,
                                  width: 220.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 36.h,
                                        width: 36.w,
                                        child: Stack(
                                          children: [
                                            AppImageWidget(
                                              reference: AppAssets.startIcon,
                                              height: 36.h,
                                              width: 36.w,
                                            ),
                                            Center(
                                              child: Text(
                                                quranSurahDetails[index]
                                                    ['number'],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //
                                      SizedBox(
                                        height: 41.h,
                                        width: 170.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              quranSurahDetails[index]['surah'],
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: AppColors.color491702,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            //
                                            //
                                            SizedBox(
                                              width: 85.w,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    quranSurahDetails[index]
                                                        ['place'],
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          AppColors.color8789A3,
                                                    ),
                                                  ),
                                                  AppImageWidget(
                                                      height: 4.h,
                                                      width: 4.w,
                                                      reference:
                                                          AppAssets.dottIcon),
                                                  Text(
                                                    quranSurahDetails[index]
                                                        ['verse'],
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          AppColors.color8789A3,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                            //
                                            //
                                          ],
                                        ),
                                      ),
                                      //
                                    ],
                                  ),
                                ),
                                //
                                SizedBox(
                                  height: 35.h,
                                  width: 49.05.w,
                                  child: Center(
                                    child: Text(
                                      quranSurahDetails[index]['arabicText'],
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: AppColors.color491702,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            height: 1.h,
                            width: 390.w,
                            color: AppColors.colorBBC4CE,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// SizedBox(
//                                         height: 40.h,
//                                         width: 170.w,
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceAround,
//                                           children: [
//                                             SizedBox(
//                                               height: 24.h,
//                                               width: 78.w,
//                                               child: Text(
//                                                 quranSurahDetails[index]
//                                                     ['surah'],
//                                                 style: TextStyle(
//                                                   fontSize: 16.sp,
//                                                   fontWeight:
//                                                       FontWeight.w500,
//                                                 ),
//                                               ),
//                                             ),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 Text(
//                                                   'Meccan',
//                                                   style: TextStyle(
//                                                     fontSize: 8.sp,
//                                                     fontWeight: FontWeight.w500,
//                                                     color:
//                                                         AppColors.color8789A3,
//                                                   ),
//                                                 ),
//                                                 AppImageWidget(
//                                                     height: 4.h,
//                                                     width: 4.w,
//                                                     reference:
//                                                         AppAssets.dottIcon),
//                                                 Text(
//                                                   '7 verses',
//                                                   style: TextStyle(
//                                                     fontSize: 8.sp,
//                                                     fontWeight: FontWeight.w500,
//                                                     color:
//                                                         AppColors.color8789A3,
//                                                   ),
//                                                 ),
//                                               ],
//                                             )
//                                           ],
//                                         ),
//                                       )