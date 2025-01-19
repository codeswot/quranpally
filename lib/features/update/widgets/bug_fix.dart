import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/theme/app_colors.dart';

class UpdateBugFixWidget extends StatelessWidget {
  const UpdateBugFixWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.h,
      width: 390.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bug Fixes:',
            style: TextStyle(
              color: AppColors.color181C32,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20.w),
            child: SizedBox(
              height: 60.h,
              width: 390.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '• Fixed loading issue when opening large commentaries.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• Resolved notification badge errors for unread reflection.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• Improved performance on low-end device to reduce lag.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
