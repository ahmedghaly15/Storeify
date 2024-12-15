import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class ProductDetailsSectionTitle extends StatelessWidget {
  const ProductDetailsSectionTitle({
    super.key,
    required this.titleKey,
  });

  final String titleKey;

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr(titleKey),
      style: AppTextStyles.textStyle16Medium
          .copyWith(color: AppColors.primaryColor),
    );
  }
}
