import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

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
        BlocSelector<GeneralCubit, GeneralState, int>(
          selector: (state) => state.productQuantity,
          builder: (context, productQuantity) => Text(
            '${(priceAfterDiscount * productQuantity).toStringAsFixed(2)} LE',
            style: AppTextStyles.textStyle16SemiBold.copyWith(
              color: AppColors.color2A94F4,
            ),
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
