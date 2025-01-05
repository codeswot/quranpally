import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/authentication/widgets/custom_text_form_field.dart';
import 'package:quranpally/features/authentication/widgets/ssologincard.dart';
import 'package:quranpally/shared/widgets/app_button.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: const _RegisterPageView(),
    );
  }
}

class _RegisterPageView extends StatefulWidget {
  const _RegisterPageView();

  @override
  State<_RegisterPageView> createState() => __RegisterPageViewState();
}

class __RegisterPageViewState extends State<_RegisterPageView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: -55.h,
          left: 0.w,
          child: const AppImageWidget(
            reference: AppAssets.authdownline1,
          ),
        ),
        Positioned(
          bottom: -10.h,
          left: -25.w,
          child: const AppImageWidget(
            reference: AppAssets.authdownline2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      width: 390.w,
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'Create an Account to Unlock All Features',
                            style: TextStyle(
                              color: AppColors.color491702,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.color181C32,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            'Join us to reflect on the Quran, engage with\nothers, and explore all the platform’\nsnofferings.',
                          ),
                          SizedBox(height: 8.h),
                        ],
                      ),
                    ),
                    //
                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 244.h,
                      width: 357.w,
                      child: Column(
                        children: [
                          const CustomTextFormField(
                            hintText: 'Email',
                            obscureText: false,
                          ),
                          SizedBox(height: 20.h),
                          const CustomTextFormField(
                            hintText: 'Password',
                            obscureText: true,
                          ),
                          SizedBox(height: 20.h),
                          const CustomTextFormField(
                            hintText: 'Confirm Password',
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                    //
                    SizedBox(height: 30.h),
                    SizedBox(
                      height: 131.h,
                      width: 357.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AppPrimaryButton(
                            height: 60.h,
                            width: 357.w,
                            title: 'Sign in',
                            backgroundColor: AppColors.colorFF8400,
                            onTap: () {},
                          ),
                          TextButton(
                            onPressed: () {
                              
                              context.router.replace(
                                const LoginPageRoute(),
                              );
                            },
                            child: Text(
                              'Already have an account',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.color494949,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    SizedBox(height: 50.h),
                    SizedBox(
                      width: 200.w,
                      height: 85.h,
                      child: Column(
                        children: [
                          Text(
                            'Or continue with',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.colorFF8400,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SSOLoginCard(
                                image: AppAssets.googleIcon,
                                onTapped: () {},
                              ),
                              SSOLoginCard(
                                image: AppAssets.facebookIcon,
                                onTapped: () {},
                              ),
                              SSOLoginCard(
                                image: AppAssets.appleIcon,
                                onTapped: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
