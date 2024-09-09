import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/cart/data/models/cart_product.dart';
import 'package:store_ify/features/cart/presentation/widgets/quantity_and_price.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
    required this.product,
  });

  final CartProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        start: 8.w,
        end: 8.w,
        bottom: 16.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: [
          AppConstants.itemBoxShadow,
        ],
      ),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            imageUrl:
                'https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
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
