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
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) => current is UpdateCurrentDetailsIndex,
      builder: (context, state) {
        int currentDetail =
            context.read<StoreDetailsCubit>().currentSubDetailsIndex;
        switch (currentDetail) {
          case 0:
            return StoreOffersGridViewBlocBuilder(storeId: storeId);
          case 1:
            return StoreBranchesListViewBlocBuilder(storeId: storeId);
          case 2:
            return StoreCategoriesGridViewBlocBuilder(storeId: storeId);
          default:
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
        }
      },
    );
  }
}
