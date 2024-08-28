import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites_cubit.dart';
import 'package:store_ify/features/home/data/models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxWidth: 175.w, maxHeight: 210.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        boxShadow: <BoxShadow>[
          Helper.itemBoxShadow(),
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          // context.navigateTo(routeName: Routes.productDetailsViewRoute);
        },
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: CustomCachedNetworkImage(
                  imageUrl: product.productImages[0].img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 9.w,
                top: 8.h,
                end: 16.w,
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
                        "${product.priceAfterDiscount} LE",
                        style: AppTextStyles.textStyle10Medium.copyWith(
                          color: AppColors.lightBlueColor,
                        ),
                      ),
                      MySizedBox.width8,
                      Text(
                        "${product.price} LE",
                        style: AppTextStyles.textStyle10Medium.copyWith(
                          color: AppColors.fontPrimaryColor,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      IconButton(
                        onPressed: () => context
                            .read<FavoritesCubit>()
                            .preferProduct(product.id),
                        icon: Icon(
                          product.isFavorited
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          size: 18.w,
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
