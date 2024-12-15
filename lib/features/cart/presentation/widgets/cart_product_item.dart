import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/product_quantity_controller.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.cartItemMargin,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: context.isDarkModeActive
            ? AppColors.secondaryDarkColor
            : AppColors.lightModeColor,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: [
          AppConstants.itemBoxShadow,
        ],
      ),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            imageUrl: product.productImages[0].img,
            imageBuilder: (_, image) => Container(
              height: 98.h,
              width: 101.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          MySizedBox.width8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppTextStyles.textStyle14Regular.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                Text(
                  product.description,
                  style: AppTextStyles.textStyle10Light,
                ),
                MySizedBox.height8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductQuantityController(
                      decreaseOnPressed: () =>
                          context.read<CartCubit>().decreaseProductQuantity(),
                      increaseOnPressed: () =>
                          context.read<CartCubit>().increaseProductQuantity(),
                      productQuantityWidget:
                          BlocSelector<CartCubit, CartState, int>(
                        selector: (state) => state.productQuantity,
                        builder: (context, productQuantity) => Text(
                          '$productQuantity',
                          style: AppTextStyles.textStyle8Regular.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    BlocSelector<CartCubit, CartState, int>(
                      selector: (state) => state.productQuantity,
                      builder: (context, productQuantity) => Text(
                        '${(product.priceAfterDiscount * productQuantity).toStringAsFixed(2)} LE',
                        style: AppTextStyles.textStyle16Medium.copyWith(
                          color: AppColors.color2A94F4,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
