import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/categories/presentation/widgets/category_item.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/categories_grid_view_shimmer.dart';

class StoreCategoriesGridViewBlocBuilder extends StatelessWidget {
  const StoreCategoriesGridViewBlocBuilder({super.key, required this.storeId});

  final int storeId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case StoreDetailsStateStatus.fetchStoreCategoriesLoading:
            return const CategoriesGridViewShimmer();
          case StoreDetailsStateStatus.fetchStoreCategoriesSuccess:
            return StoreCategoriesGridView(
                storeCategories: state.storeCategories!);
          case StoreDetailsStateStatus.fetchStoreCategoriesError:
            return state.storeCategories != null
                ? StoreCategoriesGridView(
                    storeCategories: state.storeCategories!)
                : CustomErrorWidget(
                    tryAgainOnPressed: () => context
                        .read<StoreDetailsCubit>()
                        .fetchStoreCategories(storeId),
                    errorKey: state.error!,
                  );
          default:
            return const CategoriesGridViewShimmer();
        }
      },
    );
  }

  bool _buildWhen(StoreDetailsStateStatus status) {
    return status == StoreDetailsStateStatus.fetchStoreCategoriesLoading ||
        status == StoreDetailsStateStatus.fetchStoreCategoriesSuccess ||
        status == StoreDetailsStateStatus.fetchStoreCategoriesError;
  }
}

class StoreCategoriesGridView extends StatelessWidget {
  const StoreCategoriesGridView({
    super.key,
    required this.storeCategories,
  });

  final FetchStoreCategoriesResponse storeCategories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: AppConstants.categoryPadding,
      itemCount: storeCategories.categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppConstants.gridCrossAxisCount,
        crossAxisSpacing: 32.w,
        mainAxisSpacing: 19.h,
      ),
      itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
        position: index,
        columnCount: storeCategories.categories.length,
        duration: AppConstants.gridDuration,
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: CategoryItem(
              category: storeCategories.categories[index],
            ),
          ),
        ),
      ),
    );
  }
}
