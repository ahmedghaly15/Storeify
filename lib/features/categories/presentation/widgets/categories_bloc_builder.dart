import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_state.dart';
import 'package:store_ify/features/categories/presentation/widgets/categories_sliver_shimmer_loading.dart';
import 'package:store_ify/features/categories/presentation/widgets/category_item.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      buildWhen: (_, current) =>
          current is FetchCategoriesLoading ||
          current is FetchCategoriesSuccess ||
          current is FetchCategoriesError,
      builder: (_, state) => state.maybeWhen(
        fetchCategoriesLoading: () => const CategoriesSliverShimmerLoading(),
        fetchCategoriesError: (errorKey) => SliverFillRemaining(
          child: CustomErrorWidget(
            tryAgainOnPressed: () =>
                context.read<CategoriesCubit>().fetchCategories(),
            errorKey: errorKey,
          ),
        ),
        fetchCategoriesSuccess: (fetchCategoriesResponse) =>
            _categoriesSliverGrid(fetchCategoriesResponse),
        orElse: () => SliverFillRemaining(
          child: CustomErrorWidget(
            tryAgainOnPressed: () =>
                context.read<CategoriesCubit>().fetchCategories(),
            errorKey: LocaleKeys.defaultError,
          ),
        ),
      ),
    );
  }

  SliverPadding _categoriesSliverGrid(
    FetchCategoriesResponse fetchCategoriesResponse,
  ) =>
      SliverPadding(
        padding: AppConstants.categoriesGridPadding,
        sliver: SliverGrid.builder(
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
        ),
      );
}
