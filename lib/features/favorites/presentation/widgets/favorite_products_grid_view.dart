import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/product_item.dart';

class FavoriteProductsGridView extends StatelessWidget {
  const FavoriteProductsGridView({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      padding: AppConstants.categoryPadding,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppConstants.gridCrossAxisCount,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 10.h,
      ),
      itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
        position: index,
        columnCount: products.length,
        duration: AppConstants.gridDuration,
        child: ScaleAnimation(
          child: ProductItem(product: products[index]),
        ),
      ),
    );
  }
}
