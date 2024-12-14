import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';

class ProductDetailsPrice extends StatelessWidget {
  const ProductDetailsPrice({
    super.key,
    required this.price,
    required this.priceAfterDiscount,
  });

  final double price, priceAfterDiscount;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${priceAfterDiscount.toStringAsFixed(2)} LE',
          style: AppTextStyles.textStyle16SemiBold.copyWith(
            color: AppColors.color2A94F4,
          ),
        ),
        Text(
          '${price.toStringAsFixed(2)} LE',
          style: AppTextStyles.textStyle16Regular.copyWith(
            decoration: TextDecoration.lineThrough,
            color: AppColors.greyColor,
            decorationColor: AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
