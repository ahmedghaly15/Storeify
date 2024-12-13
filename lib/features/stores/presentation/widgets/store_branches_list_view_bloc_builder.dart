import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_branch_item.dart';
import 'package:store_ify/features/stores/presentation/widgets/store_branches_list_shimmer.dart';

class StoreBranchesListViewBlocBuilder extends StatelessWidget {
  const StoreBranchesListViewBlocBuilder({super.key, required this.storeId});

  final int storeId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case StoreDetailsStateStatus.fetchStoreBranchesLoading:
            return const StoreBranchesListShimmer();
          case StoreDetailsStateStatus.fetchStoreBranchesSuccess:
            return StoreBranchesWidget(storeBranches: state.storeBranches!);
          case StoreDetailsStateStatus.fetchStoreBranchesError:
            return state.storeBranches != null
                ? StoreBranchesWidget(storeBranches: state.storeBranches!)
                : CustomErrorWidget(
                    tryAgainOnPressed: () => context
                        .read<StoreDetailsCubit>()
                        .fetchStoreBranches(storeId),
                    errorKey: state.error!,
                  );
          default:
            return const StoreBranchesListShimmer();
        }
      },
    );
  }

  bool _buildWhen(StoreDetailsStateStatus status) {
    return status == StoreDetailsStateStatus.fetchStoreBranchesLoading ||
        status == StoreDetailsStateStatus.fetchStoreBranchesSuccess ||
        status == StoreDetailsStateStatus.fetchStoreBranchesError;
  }
}

class StoreBranchesWidget extends StatelessWidget {
  const StoreBranchesWidget({super.key, required this.storeBranches});

  final FetchStoreBranchesResponse storeBranches;

  @override
  Widget build(BuildContext context) {
    return storeBranches.branches.isNotEmpty
        ? ListView.separated(
            padding: AppConstants.categoryPadding,
            itemBuilder: (_, index) => StoreBranchItem(
              branch: storeBranches.branches[index],
            ),
            separatorBuilder: (_, __) => MySizedBox.height16,
            itemCount: storeBranches.branches.length,
          )
        : const Center(
            child: Text('No branches'),
          );
  }
}
