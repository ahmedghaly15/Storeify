import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SmoothPageIndicator(
      controller: pageController,
      count: context.read<OnboardingCubit>().onboardingPages.length,
      effect: ExpandingDotsEffect(
        dotColor: Colors.grey,
        activeDotColor: AppColors.primaryColor,
        dotHeight: size.height * 0.01.h,
        expansionFactor: size.width * 0.013.w,
        dotWidth: size.width * 0.02.w,
        spacing: size.width * 0.015.w,
      ),
    );
  }
}
