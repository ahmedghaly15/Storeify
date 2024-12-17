import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData get lightMode => ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.lightModeColor,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.lightModeColor,
          titleTextStyle: AppTextStyles.textStyle24Medium.copyWith(
            color: Colors.black,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor:
                const WidgetStatePropertyAll(AppColors.primaryColor),
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(horizontal: 8.w),
            ),
          ),
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: AppColors.lightModeColor,
          cancelButtonStyle: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
          ),
          confirmButtonStyle: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
          ),
          headerBackgroundColor: AppColors.primaryColor,
          headerForegroundColor: AppColors.lightModeColor,
          dividerColor: AppColors.lightModeColor,
        ),
      );

  static ThemeData get darkMode => ThemeData(
        colorScheme: const ColorScheme.dark(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.darkColor,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.darkColor,
          titleTextStyle: AppTextStyles.textStyle24Medium.copyWith(
            color: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor:
                const WidgetStatePropertyAll(AppColors.primaryColor),
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(horizontal: 8.w),
            ),
          ),
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: AppColors.darkColor,
          cancelButtonStyle: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(AppColors.lightModeColor),
          ),
          confirmButtonStyle: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(AppColors.lightModeColor),
          ),
          headerBackgroundColor: AppColors.primaryColor,
          headerForegroundColor: AppColors.lightModeColor,
          dividerColor: AppColors.darkColor,
        ),
      );
}
