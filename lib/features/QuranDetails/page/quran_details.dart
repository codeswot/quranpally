import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_button.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class QUranDetailsPage extends StatelessWidget {
  const QUranDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _QuranDetailsPageView(),
    );
  }
}

class _QuranDetailsPageView extends StatelessWidget {
  const _QuranDetailsPageView();

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
                        reference: AppAssets.arrowBackIcon,
                      ),
                    ),
                    Text(
                      'Surah Details',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: const AppImageWidget(
                        reference: AppAssets.menuIcon,
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: SizedBox(
                  height: 186.h,
                  width: 390.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 44.h,
                        width: 134.w,
                        decoration: const BoxDecoration(
                          color: AppColors.color491702,
                        ),
                        child: Center(
                          child: Text(
                            'ﻦﻳِمَلٰعْلا ِّبَر ِهَّلِل ُدْ',
                            style: TextStyle(
                              color: AppColors.colorF9F9F9,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                        width: 327.w,
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            '[All] praise is [due] to Allah, Lord of the worlds -',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 36.h,
                        width: 284.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 21.h,
                              width: 133.w,
                              child: const Center(
                                child: Text('Surat Al-Faatiha : 2'),
                              ),
                            ),
                            SizedBox(
                              height: 21.h,
                              width: 87.w,
                              child: const Center(
                                child: Text('سورة الفاتحة : ٢'),
                              ),
                            ),
                            AppIcon(
                              onTapped: () {},
                              child: const AppImageWidget(
                                reference: AppAssets.bookMarkEmptyicon,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                        width: 142.w,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 12.h,
                                width: 39.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppIcon(
                                      onTapped: () {},
                                      child: const AppImageWidget(
                                        reference: AppAssets.smallcopyIcon,
                                      ),
                                    ),
                                    Text(
                                      'Copy',
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //
                              SizedBox(
                                height: 16.h,
                                width: 16.w,
                                child: const Center(
                                  child: Text('|'),
                                ),
                              ),
                              //
                              SizedBox(
                                height: 12.h,
                                width: 47.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppIcon(
                                      onTapped: () {},
                                      child: const AppImageWidget(
                                        reference: AppAssets.smallShareIcon,
                                      ),
                                    ),
                                    Text(
                                      'Share',
                                      style: TextStyle(
                                        fontSize: 8.sp,
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
                      SizedBox(
                        height: 18.h,
                        width: 104.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              height: 18.h,
                              width: 48.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: AppColors.colorFF8400,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const AppImageWidget(
                                        reference: AppAssets.prevIcon),
                                    Text(
                                      'Prev',
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        color: AppColors.colorFFFFFF,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              height: 18.h,
                              width: 48.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: AppColors.colorFF8400,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Next',
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        color: AppColors.colorFFFFFF,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const AppImageWidget(
                                        reference: AppAssets.nextIcon),
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
                padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                child: SizedBox(
                  height: 172.h,
                  width: 390.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 36.h,
                          width: 103.w,
                          child: Center(
                            child: Text(
                              '1 Translation',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.color181C32,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                        width: 327.w,
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            '[All] praise is [due] to Allah, Lord of the worlds -',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                        width: 48.w,
                        child: Center(
                          child: Text(
                            'SHAKIR',
                            style: TextStyle(
                              fontSize: 13.2.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                        width: 201.w,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '+',
                                style: TextStyle(
                                  color: AppColors.color181C32,
                                ),
                              ),
                              Text(
                                'ADD MORE TRANSLATIONS',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color181C32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //
              //
              SizedBox(
                height: 374.h,
                width: 390.w,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '4 Word by word',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.color181C32,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 328.h,
                      width: 390.w,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        runSpacing: 16.h,
                        spacing: 16.w,
                        children: [
                          ...List.generate(
                            4,
                            (index) {
                              final List<Map<String, String>> dataa = [
                                {
                                  'text1': 'الْحَمْدُ',
                                  'text2': 'All praises and thanks',
                                  'text3': 'ح م د',
                                  'number': '27',
                                },
                                {
                                  'text1': 'لِلَّهِ',
                                  'text2': '(be) to Allah',
                                  'text3': 'أ ل ه',
                                  'number': '132',
                                },
                                {
                                  'text1': 'رَبِّ',
                                  'text2': 'the Lord',
                                  'text3': 'ر ب ب',
                                  'number': '449',
                                },
                                {
                                  'text1': 'الْعَالَمِينَ',
                                  'text2': 'of the universe',
                                  'text3': 'ع ل م',
                                  'number': '61',
                                },
                              ];
                              return SizedBox(
                                height: 156.h,
                                width: 156.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 28.h,
                                      width: 136.w,
                                      child: Center(
                                        child: Text(
                                          dataa[index]['text1']!,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 21.h,
                                      width: 156.w,
                                      child: Center(
                                        child: Text(
                                          dataa[index]['text2']!,
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 28.h,
                                      width: 136.w,
                                      child: Center(
                                        child: Text(
                                          dataa[index]['text3']!,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    AppPrimaryButton(
                                      height: 28.h,
                                      width: 125.w,
                                      title: dataa[index]['number']!,
                                      backgroundColor: AppColors.colorFF8400,
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //
              //

              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: SizedBox(
                  height: 160.h,
                  width: 390.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Discussion of verses',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 74.h,
                        width: 390.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              height: 30.h,
                              width: 96.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColors.colorF3F3F5,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'English',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    AppIcon(
                                      onTapped: () {},
                                      child: const AppImageWidget(
                                          reference: AppAssets.arrowDownIcon),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //
                            SizedBox(
                              height: 34.h,
                              width: 390.w,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ...List.generate(
                                      3,
                                      (index) {
                                        final data = [
                                          'Ibn Kathir (Abeidgrd)',
                                          'Ma’arif Al-Qur’an',
                                          'Tazkirul Qur’an',
                                        ];
                                        return Container(
                                          margin: EdgeInsets.only(right: 15.w),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 7.h, horizontal: 15.w),
                                          height: 34.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            color: AppColors.colorF3F3F5,
                                          ),
                                          child: Center(
                                            child: Text(
                                              data[index],
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.replaceRoute(
                            const QuranDiscussPageRoute(),
                          );
                        },
                        child: SizedBox(
                          height: 33.h,
                          width: 201.w,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '+',
                                  style: TextStyle(
                                    color: AppColors.color181C32,
                                  ),
                                ),
                                Text(
                                  'ADD MORE DISCUSSION',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.color181C32,
                                  ),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: SizedBox(
                  height: 316.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Comment for Al-Fatiha [1:1]',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.color181C32,
                        ),
                      ),
                      SizedBox(
                        height: 282.h,
                        width: 390.w,
                        child: Column(
                          children: [
                            SizedBox(
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
                                            borderRadius:
                                                BorderRadius.circular(11.05.r),
                                            color: AppColors.colorF3F3F5,
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 20.w,
                                                        vertical: 14.h),
                                                border: InputBorder.none,
                                                hintText: 'Leave a comment',
                                                hintStyle:
                                                    TextStyle(fontSize: 8.sp)),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                      BorderRadius.circular(
                                                          8.r)),
                                              child: Center(
                                                child: Text(
                                                  'Post',
                                                  style: TextStyle(
                                                    fontSize: 8.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        AppColors.colorFFFFFF,
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
                            //
                            //
                            InkWell(
                              onTap: () {
                                context.router.replace(
                                  const CommentOnAyaPageRoute(),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 10.h,
                                  left: 10.w,
                                  right: 10.w,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11.0.r),
                                  color: AppColors.colorF3F3F5,
                                ),
                                width: 390.w,
                                height: 192.h,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 33.h,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Posted in Al-Fatiha [1:1]',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.color181C32,
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
                                      height: 71.h,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Could you addأَعُوذُ بِاللَّهِ مِنَ الشَّيْطانِ الرَّجِيْمِ  A'oothu billaahi minash-Shaytaanir-rajeem I seek refuge with Allah against the Satan, the outcast. as the first ayah in fatiha",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Read more',
                                            style: TextStyle(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 48.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 160.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                AppImageWidget(
                                                  reference:
                                                      AppAssets.userImage,
                                                  height: 48.h,
                                                  width: 48.w,
                                                  fit: BoxFit.fill,
                                                ),
                                                Text(
                                                  'Imrahn Samir',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        AppColors.colorFF8400,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    height: 24.h,
                                                    width: 48.w,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AppIcon(
                                                          onTapped: () {},
                                                          child:
                                                              const AppImageWidget(
                                                            reference: AppAssets
                                                                .bigLikeIcon,
                                                          ),
                                                        ),
                                                        Text(
                                                          '120',
                                                          style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .color0071DB,
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
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        AppIcon(
                                                          onTapped: () {},
                                                          child:
                                                              const AppImageWidget(
                                                            reference: AppAssets
                                                                .bigCommentIcon,
                                                          ),
                                                        ),
                                                        Text(
                                                          '113',
                                                          style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .color0071DB,
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                            //
                            //
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'See more',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: AppColors.color181C32,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
