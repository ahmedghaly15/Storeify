import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/search/data/models/search_response.dart';

class SearchResultSliverGrid extends StatelessWidget {
  const SearchResultSliverGrid({
    super.key,
    required this.searchResult,
  });

  final SearchResponse searchResult;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppConstants.gridCrossAxisCount,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
        ),
        itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
          position: index,
          columnCount: searchResult.products.length,
          child: FadeInAnimation(
            child: ProductItem(
              product: searchResult.products[index],
            ),
          ),
        ),
        itemCount: searchResult.products.length,
      ),
    );
  }
}
