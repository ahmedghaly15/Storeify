import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late final Timer _timer;

  @override
  void initState() {
    _timer =
        Timer(const Duration(milliseconds: 2500), () => _replaceNextRoute());
    super.initState();
  }

  void _replaceNextRoute() {
    if (!isOnboardingVisited) {
      context.replaceRoute(const OnboardingRoute());
    } else if (isOnboardingVisited && !isUserLoggedIn) {
      context.replaceRoute(const AuthRoute());
    } else {
      context.replaceRoute(const LayoutRoute());
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset(AppAssets.appIcon)),
            Container(
              margin: EdgeInsets.only(top: 24.h, bottom: 64.h),
              child: Text(
                AppStrings.appTitle,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                  fontFamily: AppStrings.pottaOneFont,
                ),
              ),
            ),
            SizedBox.square(
              dimension: 87.h,
              child: CustomCircularProgressIndicator(
                strokeWidth: 5.w,
                backgroundColor: AppColors.colorD9D9D9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
