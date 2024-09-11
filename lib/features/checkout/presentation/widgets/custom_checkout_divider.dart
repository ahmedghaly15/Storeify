import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class CustomCheckoutDivider extends StatelessWidget {
  const CustomCheckoutDivider({
    super.key,
    this.color = AppColors.primaryColor,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.h,
      width: 25.87.w,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2.16.r)),
        color: color,
      ),
    );
  }
}
