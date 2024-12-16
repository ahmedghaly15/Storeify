import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.tryAgainOnPressed,
    required this.errorKey,
    this.assetImgPath,
    this.errorDescriptionKey,
  });

  final VoidCallback? tryAgainOnPressed;
  final String errorKey;
  final String? assetImgPath, errorDescriptionKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            assetImgPath ??
                (errorKey == LocaleKeys.noInternet
                    ? AppAssets.imagesNoInternet
                    : AppAssets.imagesDefaultError),
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12.h),
            child: Text(
              context.tr(errorKey),
              style: AppTextStyles.textStyle18Bold,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            context.tr(errorDescriptionKey ??
                (errorKey == LocaleKeys.noInternet
                    ? LocaleKeys.ensureInternetConnection
                    : LocaleKeys.defaultErrorDescription)),
            style: AppTextStyles.textStyle14Regular,
            textAlign: TextAlign.center,
          ),
          if (tryAgainOnPressed != null)
            TryAgainButton(onPressed: tryAgainOnPressed),
        ],
      ),
    );
  }
}

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MainButton(
        margin: EdgeInsets.symmetric(horizontal: 80.w),
        onPressed: onPressed,
        textKey: LocaleKeys.tryAgain,
      ),
    );
  }
}
