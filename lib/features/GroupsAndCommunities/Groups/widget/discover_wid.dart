import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/shared.dart';
import 'package:quranpally/shared/widgets/app_button.dart';

class DiscoverWidget extends StatelessWidget {
  const DiscoverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'Suggested for you',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //
            SizedBox(
              height: 1000.h,
              width: 390.w,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => SizedBox(
                  height: 228.h,
                  width: 185.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.h,
                        width: 185.w,
                        child: const AppImageWidget(
                          reference: AppAssets.rectangleGrid,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 128.h,
                        width: 185.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 45.h,
                              width: 165.w,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Quran Knowledge',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      style: TextStyle(fontSize: 8.sp),
                                      children: const [
                                        TextSpan(text: '177K members 544.\n'),
                                        TextSpan(text: 'posts a day'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AppPrimaryButton(
                              height: 26.h,
                              width: 165.w,
                              backgroundColor: AppColors.colorFF8400,
                              title: 'Join',
                              onTap: () {},
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
      ),
    );
  }
}
