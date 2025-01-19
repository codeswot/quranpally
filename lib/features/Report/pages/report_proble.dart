import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class ReportProblePage extends StatelessWidget {
  const ReportProblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _ReportProblePageView(),
    );
  }
}

class _ReportProblePageView extends StatelessWidget {
  const _ReportProblePageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 20.w, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  InkWell(
                    onTap: () {
                      context.router.push(
                        const ReportDescriptionPageRoute(),
                      );
                    },
                    child: Text(
                      'Report a Problem',
                      style: TextStyle(
                        color: AppColors.color181C32,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'Encountered an issue? Let us know!',
                style: TextStyle(
                  color: AppColors.color181C32,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 241.h,
              width: 390.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Problem Categories:',
                    style: TextStyle(
                      color: AppColors.color181C32,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: SizedBox(
                      height: 200.h,
                      width: 390.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '• Bug/Error: (App crashes, features not working, loading issues).',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color0071DB,
                              height: 1.5,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            '• Account Issues: (Login problems, profile errors, password recovery).',
                            style: TextStyle(
                              fontSize: 12.sp,
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color0071DB,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            '• Content Issues: (Translation errors, incorrect verse, missing content).',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: AppColors.color0071DB,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            '• Reflection/Commentary Issues: (Cannot post reflection, problems with comments).',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color0071DB,
                              height: 1.5,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            '• Privacy Concerns: (Data handling issues, privacy settings) Other: (General feedback or other problems).',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: AppColors.color0071DB,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
