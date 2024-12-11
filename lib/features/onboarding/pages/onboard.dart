import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:quranpally/config/config.dart';
import 'package:quranpally/shared/widgets/widgets.dart';

@RoutePage()
class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  List<String> onboardingItems = [
    "Reflect, Engage, and Connect with\nthe Quran",
    "Empowering Your Journey of Quranic\nReflection",
    "Discover the Wisdom of the Quran,\nTogether",
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          const AppImageWidget(
            reference: AppAssets.onboardingImage,
            fit: BoxFit.cover,
          ),

          // Bottom Curved Container 1 (Back layer)
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(0, 90.h),
                    top: Offset(1.sw / 2, -50.h),
                    end: Offset(1.sw, 90.h),
                  ),
                ],
              ),
              child: Container(
                height: 420.h,
                decoration: BoxDecoration(
                  color: const Color(0xff491702),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.r),
                    topRight: Radius.circular(45.r),
                  ),
                ),
              ),
            ),
          ),

          // Bottom Curved Container 2 (Middle layer)
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(0, 95.h),
                    top: Offset(1.sw / 2, -40.h),
                    end: Offset(1.sw, 95.h),
                  ),
                ],
              ),
              child: Container(
                height: 400.h,
                decoration: BoxDecoration(
                  color: const Color(0xffFF8400),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.r),
                    topRight: Radius.circular(45.r),
                  ),
                ),
              ),
            ),
          ),

          // Bottom Curved Container 3 (Front layer with content)
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(0, 100.h),
                    top: Offset(1.sw / 2, -30.h),
                    end: Offset(1.sw, 100.h),
                  ),
                ],
              ),
              child: Container(
                height: 380.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.r),
                    topRight: Radius.circular(45.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w).copyWith(
                    top: 150.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100.h,
                        child: Text(
                          onboardingItems[currentIndex],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff491702),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: OnboardingProgressIndicator(
                          progress: (currentIndex + 1) / onboardingItems.length,
                          onTap: () {
                            if (currentIndex < onboardingItems.length - 1) {
                              setState(() {
                                currentIndex++;
                              });
                            } else {
                              context.router.replace(const WelcomeRoute());
                            }
                          },
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingProgressIndicator extends StatelessWidget {
  const OnboardingProgressIndicator({
    this.progress = 0,
    required this.onTap,
    super.key,
  });
  final double progress;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      radius: 48.r,
      child: SizedBox(
        width: 56.w,
        height: 56.w,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  color: const Color(0xff491702),
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: const Icon(Icons.chevron_right, color: Colors.white),
              ),
            ),
            Positioned.fill(
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 2,
                color: const Color(0xffFF8400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
