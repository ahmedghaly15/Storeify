import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:store_ify/config/themes/app_colors.dart';

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
      count: 3,
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
