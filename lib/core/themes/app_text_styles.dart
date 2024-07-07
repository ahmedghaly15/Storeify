import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';

class AppTextStyles {
  static TextStyle textStyle24Medium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle textStyle18Bold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle textStyle16Medium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle mainButtonTextStyle = textStyle16Medium.copyWith(
    color: Colors.white,
  );

  static TextStyle textStyle16Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle textStyle8Regular = TextStyle(
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle textStyle14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle textStyle12Medium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle textStyle12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.fontPrimaryColor,
  );

  static TextStyle textStyle10Medium = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.fontPrimaryColor,
  );
}
