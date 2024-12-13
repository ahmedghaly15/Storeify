import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_branches_list_view_bloc_builder.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_categories_grid_view_bloc_builder.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_offers_grid_view_bloc_builder.dart';

class StoreDetailsData extends StatelessWidget {
  const StoreDetailsData({super.key, required this.storeId});

  final int storeId;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<StoreDetailsCubit, StoreDetailsState, int>(
      selector: (state) => state.selectedDetailIndex,
      builder: (context, selectedDetailIndex) {
        switch (selectedDetailIndex) {
          case 0:
            return RefreshIndicator.adaptive(
              onRefresh: () async => await context
                  .read<StoreDetailsCubit>()
                  .fetchStoreOffers(storeId),
              child: StoreOffersGridViewBlocBuilder(storeId: storeId),
            );
          case 1:
            return RefreshIndicator.adaptive(
              onRefresh: () async => await context
                  .read<StoreDetailsCubit>()
                  .fetchStoreBranches(storeId),
              child: StoreBranchesListViewBlocBuilder(storeId: storeId),
            );
          case 2:
            return RefreshIndicator.adaptive(
              onRefresh: () async => await context
                  .read<StoreDetailsCubit>()
                  .fetchStoreCategories(storeId),
              child: StoreCategoriesGridViewBlocBuilder(storeId: storeId),
            );
          default:
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
        }
      },
    );
  }
}
