import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class CustomProgressCircle extends StatelessWidget {
  const CustomProgressCircle({
    super.key,
    this.isColoredPrimary = true,
  });

  final bool isColoredPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.87.h,
      width: 25.87.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            isColoredPrimary ? AppColors.primaryColor : AppColors.colorD9D9D9,
        border: Border.all(
          color:
              isColoredPrimary ? AppColors.primaryColor : AppColors.colorD9D9D9,
          width: isColoredPrimary ? 0 : 1.08.w,
        ),
      ),
    );
  }
}
