import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/cancel_outlined_button.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';

class EnableLocationPermissionAdaptiveDialog extends StatelessWidget {
  const EnableLocationPermissionAdaptiveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      icon: Image.asset(
        AppAssets.iconsLocationIcon,
        height: 100.h,
        width: 100.w,
      ),
      backgroundColor: context.isDarkModeActive
          ? AppColors.darkColor
          : AppColors.lightModeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.r),
      ),
      content: Text(
        context.tr(LocaleKeys.enableLocationPermission),
        style: AppTextStyles.textStyle16Medium,
        textAlign: TextAlign.center,
      ),
      actions: [
        MainButton(
          onPressed: () async =>
              await _requestLocationPermissionAndShowGrantedToast(context),
          textKey: LocaleKeys.ok,
        ),
        MySizedBox.height8,
        CancelOutlinedButton(
          onCancel: () async => await _popAndShowLocationDeniedToast(context),
        ),
      ],
    );
  }

  Future<void> _requestLocationPermissionAndShowGrantedToast(
    BuildContext context,
  ) async {
    await LocationService.requestPermission();
    if (await LocationService.isLocationPermissionDenied()) {
      context.showToast(LocaleKeys.locationDenied);
    } else {
      context.showToast(LocaleKeys.locationGranted);
    }
    context.maybePop();
  }

  Future<void> _popAndShowLocationDeniedToast(BuildContext context) async {
    await context.maybePop();
    context.showToast(LocaleKeys.locationDenied);
  }
}
