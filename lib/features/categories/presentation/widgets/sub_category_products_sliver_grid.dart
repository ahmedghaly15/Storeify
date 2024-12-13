import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

class SubCategoryProductsSliverGrid extends StatelessWidget {
  const SubCategoryProductsSliverGrid({
    super.key,
    required this.subCategory,
  });

  final FetchSubCategoryResponse subCategory;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: subCategory.products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppConstants.gridCrossAxisCount,
        crossAxisSpacing: 32.w,
        mainAxisSpacing: 19.h,
      ),
      itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
        position: index,
        columnCount: subCategory.products.length,
        duration: AppConstants.gridDuration,
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: ProductItem(
              product: subCategory.products[index],
            ),
          ),
        ),
      ),
    );
  }
}
