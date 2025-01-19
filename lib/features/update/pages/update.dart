import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/update/widgets/bug_fix.dart';
import 'package:quranpally/features/update/widgets/changelogs.dart';
import 'package:quranpally/features/update/widgets/what_coming.dart';
import 'package:quranpally/features/update/widgets/what_new.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _UpdatePageView(),
    );
  }
}

class _UpdatePageView extends StatelessWidget {
  const _UpdatePageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    Text(
                      'Update',
                      style: TextStyle(
                        color: AppColors.color181C32,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                height: 67.h,
                width: 390.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'QuranPally - Latest Updates',
                      style: TextStyle(
                        color: AppColors.color181C32,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Version 2.3.0\nReleased: October 10, 2024',
                      style: TextStyle(
                        color: AppColors.color181C32,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              //
              const UpdateWhatsNewWidget(),
              //
              const UpdateBugFixWidget(),
              //
              const UpdateChnageLogWidget(),
              //
              const UpdateWhatsComingWidget()
            ],
          ),
        ),
      ),
    );
  }
}
