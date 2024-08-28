import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/features/categories/presentation/widgets/category_item.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreCategoriesGridViewBlocBuilder extends StatelessWidget {
  const StoreCategoriesGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) =>
          current is FetchStoreCategoriesLoading ||
          current is FetchStoreCategoriesSuccess ||
          current is FetchStoreCategoriesError,
      builder: (context, state) => state.maybeWhen(
        fetchStoreCategoriesLoading: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
        fetchStoreCategoriesSuccess: (result) => GridView.builder(
          padding: AppConstants.categoryPadding,
          itemCount: result.categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: AppConstants.gridCrossAxisCount,
            crossAxisSpacing: 32.w,
            mainAxisSpacing: 19.h,
          ),
          itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
            position: index,
            columnCount: result.categories.length,
            duration: AppConstants.gridDuration,
            child: ScaleAnimation(
              child: FadeInAnimation(
                child: CategoryItem(
                  category: result.categories[index],
                ),
              ),
            ),
          ),
        ),
        orElse: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
      ),
    );
  }
}
