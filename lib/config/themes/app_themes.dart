import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: AppStrings.fontFamily,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primaryColor,
          unselectedIconTheme: const IconThemeData(color: AppColors.greyColor),
          backgroundColor: Colors.white,
          elevation: 20.h,
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
