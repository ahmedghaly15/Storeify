import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

bool isAndroidAbove12 = false;
bool isFirstLaunch = false;
bool isDeviceDarkModeActive = false;
bool isUserLoggedIn = false;
bool isOnboardingVisited = false;
StoreifyUser? currentUser;
String? countryCode;

final userNotifier = ValueNotifier(currentUser);

// Update the currentUser setter
set currentUserSetter(StoreifyUser user) {
  currentUser = user;
  userNotifier.value = user;
}

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
    LocaleKeys.allOffers,
    LocaleKeys.branches,
    LocaleKeys.categories,
  ];
  static const List<String> favoritesCategoriesKeys = [
    LocaleKeys.stores,
    LocaleKeys.products,
  ];
  static const Duration onboardingAnimationDuration =
      Duration(milliseconds: 475);
  static Curve get onboardingCurve => Curves.easeInOutQuart;
  static OutlineInputBorder get textFieldOutlinedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: AppColors.fontPrimaryColor, width: 1.w),
      );
  static const double mainButtonHorizontalMarginVal = 24.0;
  static BoxShadow get itemBoxShadow => BoxShadow(
        offset: Offset(0.w, 4.h),
        blurRadius: 4.w,
        spreadRadius: 0,
        color: AppColors.darkColor.withOpacity(0.25),
      );
  static const List<PaymentMethod> paymentMethods = [
    PaymentMethod(
      id: 0,
      name: LocaleKeys.creditCard,
      image: AppAssets.imagesCreditCard,
    ),
    PaymentMethod(
      id: 1,
      name: LocaleKeys.cashOnDelivery,
      image: AppAssets.imagesCash,
    ),
  ];

  static const List<CardType> cardTypes = [
    CardType(
      image: AppAssets.imagesVisa,
      nameKey: LocaleKeys.visaCard,
    ),
    CardType(
      image: AppAssets.imagesMasterCard,
      nameKey: LocaleKeys.masterCard,
    ),
    CardType(
      image: AppAssets.imagesPaypal,
      nameKey: LocaleKeys.payPal,
    ),
  ];
  static const IconData personIcon = Icons.person_2;
  static OutlineInputBorder get searchFieldOutlineInputBorder =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.r),
        borderSide: const BorderSide(color: Colors.white),
      );
  static EdgeInsetsGeometry get categoriesGridPadding => EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        bottom: 16.h,
      );
  static EdgeInsetsGeometry get cartItemMargin => EdgeInsetsDirectional.only(
        start: 8.w,
        end: 8.w,
        bottom: 16.h,
      );
  static SliverGridDelegate get favProductsGridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCrossAxisCount,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 10.h,
      );

  static BoxDecoration storeBranchItemDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.isDarkModeActive ? AppColors.darkColor : Colors.white,
      border: Border.all(
        color: AppColors.primaryColor,
        width: 1.w,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
    );
  }

  static EdgeInsetsGeometry get storeBranchItemPadding => EdgeInsets.all(10.h);
}
