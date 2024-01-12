import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 8.w),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      );
}
