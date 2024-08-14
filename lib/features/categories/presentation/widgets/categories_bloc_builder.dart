import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories_state.dart';
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
        fetchCategoriesLoading: () => const SliverFillRemaining(
          child: Center(
            child: CustomCircularProgressIndicator(),
          ),
        ),
        fetchCategoriesError: (errorKey) => SliverFillRemaining(
          child: Center(
            child: Text(context.translate(errorKey)),
          ),
        ),
        fetchCategoriesSuccess: (categories) => SliverPadding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
          ),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: categories.length,
              addAutomaticKeepAlives: true,
              (context, index) => AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: categories.length,
                duration: const Duration(milliseconds: 650),
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: CategoryItem(
                      category: categories[index],
                    ),
                  ),
                ),
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: AppConstants.gridCrossAxisCount,
              crossAxisSpacing: AppConstants.gridCrossAxisSpacing,
              mainAxisSpacing: AppConstants.gridMainAxisSpacing,
            ),
          ),
        ),
        orElse: () => const SliverFillRemaining(
          child: Center(
            child: CustomCircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
