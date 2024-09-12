import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(horizontal: 8.w),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: Colors.white,
          cancelButtonStyle: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
          ),
          confirmButtonStyle: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
          ),
          headerBackgroundColor: AppColors.primaryColor,
          headerForegroundColor: Colors.white,
          dividerColor: Colors.white,
        ),
      );
}
