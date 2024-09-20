import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
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
      buildWhen: (_, current) =>
          current is FetchStoreBranchesLoading ||
          current is FetchStoreBranchesSuccess ||
          current is FetchStoreBranchesError,
      builder: (context, state) => state.maybeWhen(
        fetchStoreBranchesLoading: () => const StoreBranchesListShimmer(),
        fetchStoreBranchesSuccess: (result) => result.branches.isNotEmpty
            ? ListView.separated(
                padding: AppConstants.categoryPadding,
                itemBuilder: (_, index) => StoreBranchItem(
                  branch: result.branches[index],
                ),
                separatorBuilder: (_, __) => MySizedBox.height16,
                itemCount: result.branches.length,
              )
            : const Center(
                child: Text('No branches'),
              ),
        fetchStoreBranchesError: (errorKey) => CustomErrorWidget(
          tryAgainOnPressed: () {
            context.read<StoreDetailsCubit>().fetchStoreBranches(storeId);
          },
          errorKey: errorKey,
        ),
        orElse: () => CustomErrorWidget(
          tryAgainOnPressed: () {
            context.read<StoreDetailsCubit>().fetchStoreBranches(storeId);
          },
          errorKey: LangKeys.defaultError,
        ),
      ),
    );
  }
}
