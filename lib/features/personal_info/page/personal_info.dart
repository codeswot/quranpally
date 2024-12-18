import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _PersonalInfoPageView(),
    );
  }
}

class _PersonalInfoPageView extends StatelessWidget {
  const _PersonalInfoPageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                  Text(
                    'Privacy',
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
          ],
        ),
      ),
    );
  }
}
