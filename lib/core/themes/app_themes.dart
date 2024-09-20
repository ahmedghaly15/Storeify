import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData get lightMode => ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
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

  static ThemeData get darkMode => ThemeData(
        colorScheme: const ColorScheme.dark(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.darkColor,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.darkColor),
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
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          confirmButtonStyle: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          headerBackgroundColor: AppColors.primaryColor,
          headerForegroundColor: Colors.white,
          dividerColor: AppColors.darkColor,
        ),
      );
}
