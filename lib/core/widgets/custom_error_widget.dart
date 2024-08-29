import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/try_again_button.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.tryAgainOnPressed,
    required this.errorKey,
  });

  final VoidCallback tryAgainOnPressed;
  final String errorKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          if (errorKey == LangKeys.noInternet)
            Image.asset(
              AppAssets.imagesNoInternet,
              fit: BoxFit.cover,
            ),
          if (errorKey == LangKeys.defaultError)
            Image.asset(
              AppAssets.imagesDefaultError,
              fit: BoxFit.cover,
            ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12.h),
            child: Text(
              context.translate(errorKey),
              style: AppTextStyles.textStyle18Bold,
              textAlign: TextAlign.center,
            ),
          ),
          if (errorKey == LangKeys.noInternet)
            Text(
              context.translate(LangKeys.ensureInternetConnection),
              style: AppTextStyles.textStyle14Regular,
              textAlign: TextAlign.center,
            ),
          if (errorKey == LangKeys.defaultError)
            Text(
              context.translate(LangKeys.defaultErrorDescription),
              style: AppTextStyles.textStyle14Regular,
              textAlign: TextAlign.center,
            ),
          const Spacer(),
          TryAgainButton(onPressed: tryAgainOnPressed),
          const Spacer(),
        ],
      ),
    );
  }
}
