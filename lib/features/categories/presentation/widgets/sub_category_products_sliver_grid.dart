import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/product_item.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_state.dart';

class SubCategoryProductsSliverGrid extends StatelessWidget {
  const SubCategoryProductsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoryCubit, SubCategoryState>(
      buildWhen: (_, current) =>
          current is FetchSubCategoryLoading ||
          current is FetchSubCategoryError ||
          current is FetchSubCategorySuccess,
      builder: (context, state) => state.maybeWhen(
        fetchSubCategoryLoading: () => const SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: CustomCircularProgressIndicator(),
          ),
        ),
        fetchSubCategoryError: (errorKey) => SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: Text(context.tr(errorKey)),
          ),
        ),
        fetchSubCategorySuccess: (subCategory) {
          debugPrint(
              'SubCategory fetched with ${subCategory.products.length} products');

          return SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
            sliver: SliverGrid.builder(
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
            ),
          );
        },
        orElse: () => const SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: CustomCircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
