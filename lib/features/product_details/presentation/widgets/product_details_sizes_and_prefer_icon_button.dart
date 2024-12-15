import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/models/product_size.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/prefer_product_bloc_listener_icon_button.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_cubit.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_state.dart';

class ProductDetailsSizesAndPreferIconButton extends StatelessWidget {
  const ProductDetailsSizesAndPreferIconButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return (product.sizes != null && product.sizes!.isNotEmpty)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  product.sizes!.length,
                  (index) => BlocSelector<ProductDetailsCubit,
                      ProductDetailsState, ProductSize>(
                    selector: (state) => state.selectedProductSize!,
                    builder: (context, selectedProductSize) {
                      final isSelected =
                          selectedProductSize == product.sizes![index];
                      return TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.all(8.h),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: isSelected
                              ? AppColors.primaryColor
                              : (context.isDarkModeActive
                                  ? Colors.white
                                  : Colors.black),
                          textStyle: AppTextStyles.textStyle16Regular,
                        ),
                        onPressed: () => context
                            .read<ProductDetailsCubit>()
                            .selectProductSize(
                              product.sizes![index],
                            ),
                        child: Text(product.sizes![index].size),
                      );
                    },
                  ),
                ),
              ),
              PreferProductBlocListenerIconButton(
                isFavorited: product.isFavorited,
                productId: product.id,
              ),
            ],
          )
        : Align(
            alignment: AlignmentDirectional.centerEnd,
            child: PreferProductBlocListenerIconButton(
              isFavorited: product.isFavorited,
              productId: product.id,
            ),
          );
  }
}
