import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/enums.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/prefer_item_bloc_listener_icon_button.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.isDarkModeActive
            ? AppColors.secondaryDarkColor
            : AppColors.lightModeColor,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          AppConstants.itemBoxShadow,
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minWidth: 0,
        onPressed: () {
          context.pushRoute(ProductDetailsRoute(product: product));
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: CustomCachedNetworkImage(
                  imageUrl: product.productImages.isNotEmpty
                      ? product.productImages[0].img
                      : 'https://plus.unsplash.com/premium_photo-1675896084254-dcb626387e1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
                  imageBuilder: (_, img) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 9.w,
                top: 8.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: AppTextStyles.textStyle14Regular.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  MySizedBox.height4,
                  Text(
                    product.description,
                    style: AppTextStyles.textStyle10Medium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "${product.priceAfterDiscount.toStringAsFixed(2)} LE",
                        style: AppTextStyles.textStyle10Medium.copyWith(
                          color: AppColors.color2A94F4,
                        ),
                      ),
                      MySizedBox.width8,
                      Text(
                        "${product.price.toStringAsFixed(2)} LE",
                        style: AppTextStyles.textStyle10Medium.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: AppColors.greyColor,
                          decorationColor: AppColors.greyColor,
                        ),
                      ),
                      Expanded(
                        child: PreferItemBlocListenerIconButton(
                          isFavorited: product.isFavorited,
                          productId: product.id,
                          itemType: FavItemType.product,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
