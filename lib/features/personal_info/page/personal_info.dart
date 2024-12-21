import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/personal_info/widgets/p_custom_text_field.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class PersonInfoPage extends StatelessWidget {
  const PersonInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.colorF9F9F9,
      body: _PersonalPageView(),
    );
  }
}

class _PersonalPageView extends StatelessWidget {
  const _PersonalPageView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
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
                        context.router.push(const PrivacyPageRoute());
                      },
                      child: const AppImageWidget(
                        reference: AppAssets.arrowBackIcon,
                      ),
                    ),
                    Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppIcon(
                      onTapped: () {},
                      child: const Text(
                        'Save',
                        style: TextStyle(color: AppColors.colorFF8400),
                      ),
                    ),
                  ],
                ),
              ),

              //
              //
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                  height: 437.h,
                  width: 390.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 96.h,
                        width: 96.w,
                        child: Stack(
                          children: [
                            AppImageWidget(
                              fit: BoxFit.fill,
                              height: 96.h,
                              width: 96.w,
                              reference: AppAssets.userImage,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: AppColors.colorF9F9F9),
                                height: 24.h,
                                width: 24.w,
                                child: const Center(
                                  child: AppImageWidget(
                                      reference: AppAssets.midiCameraIcon),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      //
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomPersonalInfoTField(
                            width: 185,
                            hintText: 'Usman',
                            obscureText: false,
                            text: 'First Name',
                          ),
                          CustomPersonalInfoTField(
                            width: 185,
                            hintText: 'Hussaini',
                            obscureText: false,
                            text: 'Last Name',
                          ),
                        ],
                      ),
                      const CustomPersonalInfoTField(
                          width: 390,
                          hintText: 'Galadima',
                          obscureText: false,
                          text: 'Middle Name'),
                      const CustomPersonalInfoTField(
                          width: 390,
                          hintText: '08088405841',
                          obscureText: false,
                          text: 'Phone Number'),
                      const CustomPersonalInfoTField(
                          width: 390,
                          hintText: 'saniahmadliman@gmail.com',
                          obscureText: false,
                          text: 'Email'),
                      const CustomPersonalInfoTField(
                          width: 390,
                          hintText: '8888888888',
                          obscureText: true,
                          text: 'Password')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
