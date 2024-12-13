import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/try_again_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.tryAgainOnPressed,
    required this.errorKey,
  });

  final VoidCallback? tryAgainOnPressed;
  final String errorKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          if (errorKey == LocaleKeys.noInternet)
            Image.asset(
              AppAssets.imagesNoInternet,
              fit: BoxFit.cover,
            ),
          if (errorKey != LocaleKeys.noInternet)
            Image.asset(
              AppAssets.imagesDefaultError,
              fit: BoxFit.cover,
            ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.h),
                child: Text(
                  context.tr(errorKey),
                  style: AppTextStyles.textStyle18Bold,
                  textAlign: TextAlign.center,
                ),
              ),
              if (errorKey == LocaleKeys.noInternet)
                Text(
                  context.tr(LocaleKeys.ensureInternetConnection),
                  style: AppTextStyles.textStyle14Regular,
                  textAlign: TextAlign.center,
                ),
              if (errorKey != LocaleKeys.noInternet)
                Text(
                  context.tr(LocaleKeys.defaultErrorDescription),
                  style: AppTextStyles.textStyle14Regular,
                  textAlign: TextAlign.center,
                ),
            ],
          ),
          if (tryAgainOnPressed != null)
            TryAgainButton(onPressed: tryAgainOnPressed),
        ],
      ),
    );
  }
}
