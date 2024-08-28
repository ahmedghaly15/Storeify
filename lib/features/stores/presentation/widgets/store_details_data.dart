import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_branches_list_view_bloc_builder.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_categories_sliver_grid_bloc_builder.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_offers_sliver_grid_bloc_builder.dart';

class StoreDetailsData extends StatelessWidget {
  const StoreDetailsData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) => current is UpdateCurrentDetailsIndex,
      builder: (context, state) {
        int currentDetail =
            context.read<StoreDetailsCubit>().currentSubDetailsIndex;
        switch (currentDetail) {
          case 0:
            return const StoreOffersSliverGridBlocBuilder();
          case 1:
            return const StoreBranchesListViewBlocBuilder();
          case 2:
            return const StoreCategoriesSliverGridBlocBuilder();
          default:
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
        }
      },
    );
  }
}
