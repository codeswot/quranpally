import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/features/Notification.dart/widgets/notification_card.dart';
import 'package:quranpally/shared/shared.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';

@RoutePage()
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _NotificationView(),
    );
  }
}

class _NotificationView extends StatelessWidget {
  const _NotificationView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 64.h,
                width: 430.w,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIcon(
                        onTapped: () {
                          context.router.push(const HomePageRoute());
                        },
                        child: const AppImageWidget(
                          reference: AppAssets.arrowBackIcon,
                        ),
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      AppIcon(
                        onTapped: () {},
                        child: AppImageWidget(
                          height: 24.h,
                          width: 24.w,
                          reference: AppAssets.searchIcon2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              Column(
                children: [
                  ...List.generate(
                    27,
                    (index) => const NotificationCard(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
