import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _AboutPageView(),
    );
  }
}

class _AboutPageView extends StatelessWidget {
  const _AboutPageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 20.w, left: 20.w),
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
                      context.router.push(const MenuPageRoute());
                    },
                    child: const AppImageWidget(
                      reference: AppAssets.arrowBackIcon,
                    ),
                  ),
                  const Text('About'),
                ],
              ),
            ),
            //
            //
            SizedBox(
              height: 113.h,
              width: 390.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'QuranPally version 1.2.0',
                    style: TextStyle(
                      color: AppColors.color181C32,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'QuranPally is a community-centered platform designed to enhance your connection with the Quran. Through reflections, scholarly commentaries, and user discussions, we aim to create a space for learning, sharing, and spiritual growth.',
                    style: TextStyle(
                      color: AppColors.color181C32,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            //
            SizedBox(
              height: 252.h,
              width: 390.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 44.h,
                    width: 390.w,
                    child: Row(
                      children: [
                        const AppImageWidget(reference: AppAssets.peopleIcon),
                        SizedBox(width: 15.w),
                        const Text('Our Team')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                    width: 390.w,
                    child: Row(
                      children: [
                        const AppImageWidget(reference: AppAssets.messageIcon),
                        SizedBox(width: 15.w),
                        const Text('Testimonials')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                    width: 390.w,
                    child: Row(
                      children: [
                        const AppImageWidget(reference: AppAssets.puzzleIcon),
                        SizedBox(width: 15.w),
                        const Text('Mission')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                    width: 390.w,
                    child: Row(
                      children: [
                        const AppImageWidget(
                            reference: AppAssets.messageMoreIcon),
                        SizedBox(width: 15.w),
                        const Text('Contact us')
                      ],
                    ),
                  ),
                  //
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                      children: const [
                        TextSpan(
                          text:
                              'If you have any questions or concerns about our privacy practices, please contact us at,',
                        ),
                        TextSpan(
                          text: ' suppot@quranpally.com',
                          style: TextStyle(
                            color: Color(0xFF0071DB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
