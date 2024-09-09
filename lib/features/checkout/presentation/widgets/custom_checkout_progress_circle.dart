import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class CustomCheckoutProgressCircle extends StatelessWidget {
  const CustomCheckoutProgressCircle({
    super.key,
    this.borderColor = AppColors.colorD9D9D9,
    this.color = Colors.white,
    this.borderWidth = 1.08,
  });

  final Color borderColor, color;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.87.h,
      width: 25.87.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          color: borderColor,
          width: borderWidth.w,
        ),
      ),
    );
  }
}
