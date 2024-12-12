import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.imagesEmptyCart, fit: BoxFit.cover),
        MySizedBox.height32,
        Text(
          context.tr(LocaleKeys.putToYourCart),
          style: AppTextStyles.textStyle16Medium.copyWith(
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        MySizedBox.height16,
        Text(
          context.tr(
            LocaleKeys.putToYourCartToStartShopping,
          ),
          style: AppTextStyles.textStyle10Medium.copyWith(
            color: AppColors.greyColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
