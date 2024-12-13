import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/authentication/widgets/custom_text_form_field.dart';
import 'package:quranpally/features/authentication/widgets/ssologincard.dart';
import 'package:quranpally/shared/widgets/app_button.dart';
import 'package:quranpally/shared/shared.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: const _LoginPageView(),
    );
  }
}

class _LoginPageView extends StatefulWidget {
  const _LoginPageView();

  @override
  State<_LoginPageView> createState() => __LoginPageViewState();
}

class __LoginPageViewState extends State<_LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: -25.h,
          left: 0,
          child: const AppImageWidget(
            reference: AppAssets.authdownline1,
          ),
        ),
        Positioned(
          bottom: 0.h,
          left: -25,
          child: const AppImageWidget(
            reference: AppAssets.authdownline2,
          ),
        ),
        //
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Login here',
                            style: TextStyle(
                              color: AppColors.color491702,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            textAlign: TextAlign.center,
                            "We're glad to have you return. Let’s continue your journey of reflection and connection.",
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
                    SizedBox(height: 137.h),
                    SizedBox(
                      width: 357.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 157.h,
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
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot your password?',
                                style: TextStyle(
                                  color: AppColors.colorFF8400,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          //
                          SizedBox(
                            height: 131.h,
                            width: 357.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                AppPrimaryButton(
                                  height: 60.h,
                                  width: 357.w,
                                  backgroundColor: AppColors.colorFF8400,
                                  title: 'Sign in',
                                  onTap: () {},
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.router.replace(
                                      const RegisterPageRoute(),
                                    );
                                  },
                                  child: Text(
                                    'Create new account',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.color494949,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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