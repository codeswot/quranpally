import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class DiscussVersePage extends StatelessWidget {
  const DiscussVersePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _DiscussVersePageView(),
    );
  }
}

class _DiscussVersePageView extends StatelessWidget {
  const _DiscussVersePageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
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
                    'Discussion of verses',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            //
            //
            SizedBox(height: 15.h),
            SizedBox(
              width: 390.w,
              height: 74.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 185.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: AppColors.colorF3F3F5,
                          ),
                          height: 30.h,
                          width: 117.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Al-Fatiah',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              AppIcon(
                                onTapped: () {},
                                child: const AppImageWidget(
                                  reference: AppAssets.arrowDownIcon,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: AppColors.colorF3F3F5,
                          ),
                          height: 30.h,
                          width: 58.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              AppIcon(
                                onTapped: () {},
                                child: const AppImageWidget(
                                  reference: AppAssets.arrowDownIcon,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34.h,
                    width: 390.w,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.colorF3F3F5,
                            ),
                            height: 30.h,
                            width: 96.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    reference: AppAssets.arrowDownIcon,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.colorFF8400.withOpacity(0.25),
                            ),
                            height: 30.h,
                            width: 163.w,
                            child: Center(
                              child: Text(
                                'Ibn Kathir (Abeidgrd)',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColors.colorF3F3F5),
                            height: 30.h,
                            width: 163.w,
                            child: Center(
                              child: Text(
                                'Ma’arif Al-Qur’an',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Container(
                padding: EdgeInsets.all(10.h.w),
                height: 44.h,
                width: 134.w,
                decoration: const BoxDecoration(
                  color: AppColors.color491702,
                ),
                child: const AppImageWidget(reference: AppAssets.alhmdllIcon),
              ),
            ),
            //
            //
            SizedBox(
              width: 390.w,
              height: 650.h,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 38.h,
                      width: 390.w,
                      child: Row(
                        children: [
                          Text(
                            'Font Size',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 73.w,
                            height: 37.h,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppIcon(
                                  onTapped: () {},
                                  child: const Text('-'),
                                ),
                                const Text('3'),
                                AppIcon(
                                  onTapped: () {},
                                  child: const Text('+'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text(
                        'Which was revealed in Makkah',
                        style: TextStyle(
                          color: AppColors.color181C32,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Text(
                        'The Meaning of Al-Fatihah and its Various Names',
                        style: TextStyle(
                          color: AppColors.color181C32,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Text(
                        'This Surah is called Al-Fatihah',
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    Text(
                      '- That is, the Opener of the Book, the Surah with which prayers are begun.It is also called, Umm Al-Kitab (the Mother of the Book), according to the majority of the scholars.In an authentic Hadith recorded by At-Tirmidhi, who graded it Sahih, Abu Hurayrah said that the Messenger of Allah ﷺ said,',
                      style: TextStyle(
                        height: 1.7,
                        fontSize: 12.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Text(
                        'الْحَمْدُ للهِ رَبَ الْعَالَمِينَ أُمُّ الْقُرْآنِ وَأُمُّ الْكِتَابِ وَالسَّبْعُ الْمَثَانِي وَالْقُرْآنُ الْعَظ',
                        style: TextStyle(
                          fontSize: 12.sp,
                          height: 1.7,
                        ),
                      ),
                    ),
                    //
                    Text(
                      "Al-Hamdu lillahi Rabbil-`Alamin is the Mother of the Qur'an, the Mother of the Book, and the seven repeated Ayat of the Glorious Qur'an.It is also called Al-Hamd and As-Salah, because the Prophet ﷺ said that his Lord said,قَسَمْتُ الصَّلَاةَ بَيْنِي وَبَيْنَ عَبْدِي نِصْفَيْنِ، فَإِذَا قَالَ الْعَبْدُ:الْحَمْدُ للهِ رَبِّ الْعَالَمِنَ، قَالَ اللهُ: حَمِدَنِي عَبْدِي",
                      style: TextStyle(
                        fontSize: 12.sp,
                        height: 1.7,
                      ),
                    ),
                    Text(
                      "The prayer (i.e., Al-Fatihah) is divided into two halves between Me and My servants. When the servant says, `All praise is due to Allah, the Lord of existence,' Allah says, 'My servant has praised Me. Al-Fatihah was called the Salah, because reciting it is a condition for the correctness of Salah - the prayer. Al-Fatihah was also called Ash-Shifa' (the Cure).It is also called Ar-Ruqyah (remedy), since in the Sahih, there is the narration of Abu Sa`id telling the story of the Companion who used Al-Fatihah as a remedy for the tribal chief who was poisoned. Later, the Messenger of Allah ﷺ said to a Companionوَمَا يُدْرِيكَ أَنَّهَا رُقْيَةٌ",
                      style: TextStyle(
                        fontSize: 12.sp,
                        height: 1.7,
                      ),
                    ),
                    Text(
                      "How did you know that it is a Ruqyah?Al-Fatihah was revealed in Makkah as Ibn Abbas, Qatadah and Abu Al-Aliyah stated.Allah said,",
                      style: TextStyle(
                        fontSize: 12.sp,
                        height: 1.7,
                      ),
                    ),
                    Text(
                      "وَلَقَدْ ءاتَيْنَـكَ سَبْعًا مِّنَ الْمَثَانِي indeed, We have bestowed upon you the seven Mathani (seven repeatedly recited verses), (i.e. Surah Al-Fatihah) (15:87). Allah knows best.",
                      style: TextStyle(
                        fontSize: 12.sp,
                        height: 1.7,
                      ),
                    ),
                    Text(
                      '''How many Ayat does Al-Fatihah contain
There is no disagreement over the view that Al-Fatihah contains seven Ayat. According to the majority of the reciters of Al-Kufah, a group of the Companions, the Tabi`in, and a number of scholars from the successive generations, the Bismillah is a separate Ayah in its beginning. We will mention this subject again soon, if Allah wills, and in Him we trust.
The Number of Words and Letters in Al-Fatihah
The scholars say that Al-Fatihah consists of twenty-five words, and that it contains one hundred and thirteen letters.
The Reason it is called Umm Al-Kitab
In the beginning of the Book of Tafsir, in his Sahih, Al-Bukhari said; "It is called Umm Al-Kitab, because the Qur'an starts with it and because the prayer is started by reciting it." It was also said that it is called Umm Al-Kitab, because it contains the meanings of the entire Qur'an. Ibn Jarir said, "The Arabs call every comprehensive matter that contains several specific areas an Umm. For instance, they call the skin that surrounds the brain, Umm Ar-Ra's. They also call the flag that gathers the ranks of the army an Umm." He also said, "Makkah was called Umm Al-Qura, (the Mother of the Villages) because it is the grandest and the leader of all villages. It was also said that the earth was made starting from Makkah."
Further, Imam Ahmad recorded that Abu Hurayrah narrated about Umm Al-Qur'an that the Prophet ﷺ said,''',
                      style: TextStyle(
                        fontSize: 12.sp,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
