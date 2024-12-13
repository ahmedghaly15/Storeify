import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/cart/presentation/widgets/quantity_and_price.dart';

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
                QuantityAndPrice(price: product.price),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
