import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:store_ify/config/themes/app_colors.dart';

class CustomAuthLoading {
  static void show(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      builder: (context) => const AuthLoadingIndicator(),
    );
  }
}

class AuthLoadingIndicator extends StatelessWidget {
  const AuthLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80.h,
        width: 80.h,
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        child: LoadingIndicator(
          indicatorType: Indicator.ballRotateChase,
          colors: AppColors.loadingColors,
          strokeWidth: 5.w,
        ),
      ),
    );
  }
}
