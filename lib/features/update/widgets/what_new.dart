import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/theme/app_colors.dart';

class UpdateWhatsNewWidget extends StatelessWidget {
  const UpdateWhatsNewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205.h,
      width: 390.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What"s New :',
            style: TextStyle(
              color: AppColors.color181C32,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20.w),
            child: SizedBox(
              height: 164.h,
              width: 390.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '• Enhanced Reflections Features: You can now share your\n   reflections directly to groups fro more community\n   engagement.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• Improved Commentary Display: Commentaries from\n   multiple scholars are now easier to switch between with\n   tabs for faster navigations.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '• UI/UX Updates: Refreshed navigation icon for a cleaner\n   look and soomther user experience.',
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
