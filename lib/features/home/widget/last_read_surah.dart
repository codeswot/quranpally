import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

class LastReadSurah extends StatelessWidget {
  const LastReadSurah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      height: 65.h,
      width: 175.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.color491702,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: Stack(
              children: [
                const AppImageWidget(
                  reference: AppAssets.startIcon,
                ),
                Center(
                  child: Text(
                    '1',
                    style:
                        TextStyle(color: AppColors.colorFFFFFF, fontSize: 8.sp),
                  ),
                )
              ],
            ),
          ),
          //
          SizedBox(
            height: 36.h,
            width: 121.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Al-Fātiḥah',
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.colorFFFFFF,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '(Pembuka)',
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.colorFF8400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 104.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppImageWidget(
                        reference: AppAssets.makiyyaIcon,
                      ),
                      Text(
                        'Makiyyah',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: AppColors.color828282,
                        ),
                      ),
                      const AppImageWidget(reference: AppAssets.bookIcon),
                      Text(
                        '7 ayyat',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: AppColors.color828282,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'الفاتحة',
                    style: TextStyle(
                      fontSize: 8.sp,
                      color: AppColors.colorFFFFFF,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
