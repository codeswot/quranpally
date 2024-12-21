import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class ReflectionCard extends StatelessWidget {
  const ReflectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      child: SizedBox(
        height: 250.h,
        width: 390.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 30.h,
              width: 390.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppImageWidget(
                        height: 24.h,
                        width: 24.w,
                        fit: BoxFit.fill,
                        reference: AppAssets.userImage,
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Imrahn Samir',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.colorFF8400,
                            ),
                          ),
                          Text(
                            '4 Days',
                            style: TextStyle(fontSize: 8.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                  AppIcon(
                    onTapped: () {},
                    width: 16.w,
                    height: 6.h,
                    child: const AppImageWidget(
                      reference: AppAssets.threeDotsIcon,
                    ),
                  )
                ],
              ),
            ),
            //
            SizedBox(
              height: 50.h,
              width: 390.w,
              child: Text(
                'I am grappling with a persistent health issue that resurfaces every few months, ',
                style: TextStyle(
                  height: 1.8.h,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //
            //
            Container(
              height: 125.h,
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
              width: 390.w,
              color: AppColors.color491702,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImageWidget(
                    reference: AppAssets.frameImage,
                    height: 48.h,
                    width: 48.w,
                  ),
                  Text(
                    'Chapter 9 : At-Tawba, Verse: 39',
                    style: TextStyle(
                      height: 1.8.h,
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'If you do not march forth, He will afflict...',
                    style: TextStyle(
                      height: 1.8.h,
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            //
            SizedBox(
              height: 25.h,
              width: 390.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 24.h,
                    width: 60.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppIcon(
                          onTapped: () {},
                          width: 24.h,
                          height: 24.w,
                          child: const AppImageWidget(
                              reference: AppAssets.likeIcon),
                        ),
                        Text(
                          '553',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.color181C32,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                    width: 60.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppIcon(
                          onTapped: () {},
                          width: 24.h,
                          height: 24.w,
                          child: const AppImageWidget(
                              reference: AppAssets.commentIcon),
                        ),
                        Text(
                          '164',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.color181C32,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  //
                  AppIcon(
                    onTapped: () {},
                    width: 24.h,
                    height: 24.w,
                    child: const AppImageWidget(reference: AppAssets.shareIcon),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
