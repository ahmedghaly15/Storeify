import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';

bool isUserLoggedIn = false;
bool isOnboardingVisited = false;

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
}
