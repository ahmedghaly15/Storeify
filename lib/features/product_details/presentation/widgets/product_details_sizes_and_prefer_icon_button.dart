import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/prefer_product_bloc_listener_icon_button.dart';

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
                spacing: 6.w,
                children: List.generate(
                  product.sizes!.length,
                  (index) => Text(
                    product.sizes![index].size,
                    style: AppTextStyles.textStyle16Regular,
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
