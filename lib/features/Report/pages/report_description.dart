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
class ReportDescriptionPage extends StatelessWidget {
  const ReportDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _ReportDescriptionView(),
    );
  }
}

class _ReportDescriptionView extends StatelessWidget {
  const _ReportDescriptionView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 62.h,
              width: 390.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    onTapped: () {
                      context.router.push(const ReportPageRoute());
                    },
                    child: const AppImageWidget(
                      reference: AppAssets.arrowBackIcon,
                    ),
                  ),
                  Text(
                    'Problem\nDescription',
                    style: TextStyle(
                      color: AppColors.color181C32,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'detail, so we can better ',
                style: TextStyle(
                  color: AppColors.color181C32,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            //
            Container(
              height: 96.h,
              width: 390.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.colorFFFFFF,
                border: Border.all(width: 0.5.w),
              ),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  hintText: 'Type the issue...',
                  border: InputBorder.none,
                ),
              ),
            ), //

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: SizedBox(
                height: 63.h,
                width: 213.w,
                child: Text(
                  'Add a screenshot or file to help us understand the issue better.',
                  style: TextStyle(
                    color: AppColors.color181C32,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            //
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(width: 0.5),
                color: AppColors.colorFFFFFF,
              ),
              height: 144.h,
              width: 390.w,
              child: Column(
                children: [
                  AppImageWidget(
                      height: 48.h,
                      width: 48.w,
                      reference: AppAssets.dragAddIcon),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Upload Files ',
                          style: TextStyle(
                            color: AppColors.color0071DB,
                            fontSize: 12.sp,
                          ),
                        ),
                        TextSpan(
                          text: 'or drag and drop',
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'PDF, JPG, DOC. up to 10MB',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  )
                ],
              ),
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: SizedBox(
                height: 42.h,
                width: 213.w,
                child: Text(
                  'Let us know how to reach you for further details:',
                  style: TextStyle(
                    color: AppColors.color181C32,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            //
            SizedBox(
              height: 176.h,
              width: 430.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 59.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(width: 0.5.w),
                            color: AppColors.colorFFFFFF,
                          ),
                          height: 34.h,
                          width: 390.w,
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 59.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            color: AppColors.color181C32,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(width: 0.5.w),
                            color: AppColors.colorFFFFFF,
                          ),
                          height: 34.h,
                          width: 390.w,
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //
                  //
                  AppPrimaryButton(
                    backgroundColor: AppColors.colorFF8400,
                    width: 390.w,
                    height: 34.h,
                    title: 'Submit',
                    onTap: () {},
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
