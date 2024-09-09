import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/core/themes/app_colors.dart';

bool isUserLoggedIn = false;
bool isOnboardingVisited = false;
StoreifyUser? currentUser;

class AppConstants {
  static const ScrollPhysics physics = BouncingScrollPhysics();
  static const int gridCrossAxisCount = 2;
  static double get gridCrossAxisSpacing => 10.w;
  static double get gridMainAxisSpacing => 16.h;
  static const Duration gridDuration = Duration(milliseconds: 350);
  static EdgeInsetsGeometry categoryMargin =
      EdgeInsetsDirectional.only(top: 29.h, bottom: 19.h);
  static EdgeInsetsGeometry categoryPadding =
      EdgeInsetsDirectional.symmetric(horizontal: 16.w);
  static const List<String> storeDetailsCategoriesKeys = [
    LangKeys.allOffers,
    LangKeys.branches,
    LangKeys.categories,
  ];
  static const List<String> favoritesCategoriesKeys = [
    LangKeys.stores,
    LangKeys.products,
  ];
  static const Duration onboardingAnimationDuration =
      Duration(milliseconds: 475);
  static Curve get onboardingCurve => Curves.fastEaseInToSlowEaseOut;
  static OutlineInputBorder get textFieldOutlinedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColors.fontPrimaryColor, width: 1.w),
      );
  static const double mainButtonHorizontalMarginVal = 24.0;
  static BoxShadow get itemBoxShadow => BoxShadow(
        offset: Offset(0.w, 4.h),
        blurRadius: 4.w,
        spreadRadius: 0,
        color: Colors.black.withOpacity(0.25),
      );
}
