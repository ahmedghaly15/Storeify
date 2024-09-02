import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';

class CustomIndicators extends StatelessWidget {
  const CustomIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: context.read<OnboardingCubit>().pageController,
      count: context.read<OnboardingCubit>().onboardingPages.length,
      effect: ExpandingDotsEffect(
        dotColor: Colors.grey,
        activeDotColor: AppColors.primaryColor,
        dotHeight: 6.h,
        expansionFactor: 5.w,
        dotWidth: 6.h,
        spacing: 5.w,
      ),
    );
  }
}
