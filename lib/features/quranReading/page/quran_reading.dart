import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class QuranReadingPage extends StatelessWidget {
  const QuranReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _QuranReadingPageView(),
    );
  }
}

class _QuranReadingPageView extends StatelessWidget {
  const _QuranReadingPageView();

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> surahDetailsData = [
      {
        'number': '1',
        'text1': 'َﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْمَحْلا',
        'text2': '[All] praise is [due] to Allah, Lord of the worlds -',
      },
      {
        'number': '2',
        'text1': 'الرَّحْمٰنِ الرَّحِيمِ',
        'text2': 'The Most Gracious, the Most Merciful,',
      },
      {
        'number': '3',
        'text1': 'مَالِكِ يَوْمِ الدِّينِ',
        'text2': 'Master of the Day of Judgment.',
      },
      {
        'number': '4',
        'text1': 'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
        'text2': 'You alone we worship, and You alone we ask for help.',
      },
      {
        'number': '5',
        'text1': 'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
        'text2': ' Guide us on the Straight Path,',
      },
      {
        'number': '6',
        'text1':
            'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
        'text2':
            'The path of those who have received Your grace; not the path of those who have gone astray, or who have earned Your anger.',
      },
    ];
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
                        context.router.push(const QuranHomePageRoute());
                      },
                      child: const AppImageWidget(
                        reference: AppAssets.arrowBackIcon,
                      ),
                    ),
                    Text(
                      'Al-Fatiah',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: AppImageWidget(
                        height: 24.h,
                        width: 24.w,
                        reference: AppAssets.searchIcon2,
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Container(
                  height: 257.h,
                  width: 390.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.05.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.color4F200D,
                        AppColors.colorFF8400,
                      ],
                    ),
                    image: const DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage(AppAssets.quranBackImage),
                      opacity: 0.1,
                    ),
                  ),
                  child: SizedBox(
                    height: 200.h,
                    width: 214.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 120.h,
                          width: 200.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 67.h,
                                width: 123.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Al-Fatiah',
                                      style: TextStyle(
                                        fontSize: 26.h,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.colorFFFFFF,
                                      ),
                                    ),
                                    Text(
                                      'The Opening',
                                      style: TextStyle(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.colorFFFFFF,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //
                              Container(
                                width: 200.w,
                                height: 0.4.h,
                                color: AppColors.colorFFFFFF,
                              ),
                              SizedBox(
                                height: 21.h,
                                width: 138.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'MECCAN',
                                      style: TextStyle(
                                        color: AppColors.colorFFFFFF,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    AppImageWidget(
                                        height: 6.h,
                                        width: 6.w,
                                        reference: AppAssets.dottIcon),
                                    Text(
                                      '7 VERSE',
                                      style: TextStyle(
                                        color: AppColors.colorFFFFFF,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //
                        //
                        AppImageWidget(
                          height: 48.h,
                          fit: BoxFit.fill,
                          width: 214.w,
                          reference: AppAssets.bismillah,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //
              SizedBox(height: 20.h),
              Column(
                children: [
                  ...List.generate(
                    surahDetailsData.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: SizedBox(
                        height: 173.h,
                        width: 390.w,
                        child: Column(
                          children: [
                            //
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.h, horizontal: 20.w),
                              height: 48.h,
                              width: 390.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: AppColors.color181C32.withOpacity(0.1),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 24.h,
                                    width: 24.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.colorFF8400,
                                      borderRadius: BorderRadius.circular(30.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        surahDetailsData[index]['number']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          color: AppColors.colorFFFFFF,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 184.w,
                                    height: 24.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppIcon(
                                          onTapped: () {},
                                          child: const AppImageWidget(
                                            reference: AppAssets.playIcon,
                                          ),
                                        ),
                                        AppIcon(
                                          onTapped: () {},
                                          child: const AppImageWidget(
                                            reference: AppAssets.shareIcon,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24.h,
                                          width: 24.w,
                                          child: Stack(
                                            children: [
                                              AppIcon(
                                                onTapped: () {
                                                  context.router.push(
                                                    const QuranDetailsPageRoute(),
                                                  );
                                                },
                                                child: const AppImageWidget(
                                                  reference:
                                                      AppAssets.writeIcon,
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: Container(
                                                  height: 10.h,
                                                  width: 10.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r),
                                                    color:
                                                        AppColors.colorF00000,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      '9+',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .colorFFFFFF,
                                                        fontSize: 6.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        AppIcon(
                                          onTapped: () {},
                                          child: const AppImageWidget(
                                            reference: AppAssets.copyIcon,
                                          ),
                                        ),
                                        AppIcon(
                                          onTapped: () {},
                                          child: const AppImageWidget(
                                            reference: AppAssets.bookMarkicon,
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
                              height: 122.h,
                              width: 390.w,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 32.h,
                                    width: 390.w,
                                    child: Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        surahDetailsData[index]['text1']!,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  //
                                  //
                                  SizedBox(
                                    height: 40.h,
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.w),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          surahDetailsData[index]['text2']!,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color181C32,
                                          ),
                                        ),
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
