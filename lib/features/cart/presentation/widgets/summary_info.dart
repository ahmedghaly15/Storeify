import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class SummaryInfo extends StatelessWidget {
  const SummaryInfo({
    super.key,
    required this.nameKey,
    required this.price,
  });

  final String nameKey;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${context.tr(nameKey)}:',
          style: AppTextStyles.textStyle12Regular.copyWith(
            color: AppColors.colorBEBEC3,
          ),
        ),
        Text(
          '$price LE',
          style: AppTextStyles.textStyle12Regular.copyWith(
            color: AppColors.colorBEBEC3,
          ),
        ),
      ],
    );
  }
}
