import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/shared/widgets/app_button.dart';
import 'package:quranpally/shared/widgets/widgets.dart';

import '../../../shared/widgets/app_image.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _WelcomePageView());
  }
}

class _WelcomePageView extends StatelessWidget {
  const _WelcomePageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImageWidget(
              reference: AppAssets.quranWelcomeImage,
              width: 390.w,
              height: 330.h,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 343.w,
              child: Column(
                children: [
                  Text(
                    'QuranPally: Reflect,\nEngage, Connect',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: const Color(0xff491702),
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Explore all the existing job roles based on your interest and study major',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: const Color(0xff181C32),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 123.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppPrimaryButton(
                  title: 'Login',
                  backgroundColor: const Color(0xffFF8400),
                  onTap: () {
                    context.router.push(const LoginPageRoute());
                  },
                ),
                SizedBox(width: 30.w),
                AppPrimaryButton(
                  title: 'Register',
                  backgroundColor: const Color(0xffDEDEDE),
                  foregroundColor: const Color(0xff7A7B78),
                  onTap: () {
                    context.router.push(const RegisterPageRoute());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
