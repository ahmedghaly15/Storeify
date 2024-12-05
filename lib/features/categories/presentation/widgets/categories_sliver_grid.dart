import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/presentation/widgets/category_item.dart';

class CategoriesSliverGrid extends StatelessWidget {
  const CategoriesSliverGrid({
    super.key,
    required this.fetchCategoriesResponse,
  });

  final FetchCategoriesResponse fetchCategoriesResponse;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
        position: index,
        columnCount: fetchCategoriesResponse.categories.length,
        duration: AppConstants.gridDuration,
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: CategoryItem(
              category: fetchCategoriesResponse.categories[index],
            ),
          ),
        ),
      ),
      itemCount: fetchCategoriesResponse.categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppConstants.gridCrossAxisCount,
        crossAxisSpacing: AppConstants.gridCrossAxisSpacing,
        mainAxisSpacing: AppConstants.gridMainAxisSpacing,
      ),
    );
  }
}
