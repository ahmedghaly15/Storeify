import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_branch_item.dart';

class StoreBranchesListViewBlocBuilder extends StatelessWidget {
  const StoreBranchesListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) =>
          current is FetchStoreBranchesLoading ||
          current is FetchStoreBranchesSuccess ||
          current is FetchStoreBranchesError,
      builder: (context, state) => state.maybeWhen(
        fetchStoreBranchesLoading: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
        fetchStoreBranchesSuccess: (result) => ListView.separated(
          itemBuilder: (_, index) => StoreBranchItem(
            branch: result.branches[index],
          ),
          separatorBuilder: (_, __) => MySizedBox.height16,
          itemCount: result.branches.length,
        ),
        fetchStoreBranchesError: (errorKey) => CustomErrorWidget(
          onPressed: () {},
          error: errorKey,
        ),
        orElse: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
      ),
    );
  }
}