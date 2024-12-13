import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';

extension NullOrEmptyString on String? {
  /// Check if the string is null or empty
  bool get nullOrEmpty => this == null || this == '';
}

extension UnfocusKeyboard on BuildContext {
  void unfocusKeyboard() => FocusScope.of(this).unfocus();
}

extension RequestFocusOnFocusNode on BuildContext {
  void requestFocus(FocusNode node) => FocusScope.of(this).requestFocus(node);
}

extension CheckDarkThemeActivation on BuildContext {
  bool get isDarkModeActive => Theme.of(this).brightness == Brightness.dark;
}

extension ShowMyToast on BuildContext {
  void showToast(String message) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black26,
          elevation: 0,
          duration: const Duration(seconds: 2),
          dismissDirection: locale.languageCode == 'ar'
              ? DismissDirection.startToEnd
              : DismissDirection.endToStart,
          behavior: SnackBarBehavior.floating,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          content: Row(
            spacing: 8.w,
            children: [
              Image.asset(AppAssets.appIcon, height: 32.h, width: 32.h),
              Expanded(
                child: Text(
                  this.tr(message),
                  style: AppTextStyles.textStyle14Regular
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      );
}
