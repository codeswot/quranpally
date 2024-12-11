import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
