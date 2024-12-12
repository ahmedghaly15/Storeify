import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';
import 'package:store_ify/features/search/presentation/widgets/no_result_search_found_widget.dart';
import 'package:store_ify/features/search/presentation/widgets/search_result_shimmer_loading.dart';
import 'package:store_ify/features/search/presentation/widgets/search_result_sliver_grid.dart';

class SearchResultBlocBuilder extends StatelessWidget {
  const SearchResultBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case SearchStateStatus.searchLoading:
            return const SearchResultShimmerLoading();
          case SearchStateStatus.searchSuccess:
            return state.searchResult!.products.isNotEmpty
                ? SearchResultSliverGrid(searchResult: state.searchResult!)
                : const NoResultSearchFoundWidget();
          case SearchStateStatus.searchError:
            return state.error != AppStrings.searchRequiredErrorKey
                ? SliverFillRemaining(
                    hasScrollBody: false,
                    child: CustomErrorWidget(
                      errorKey: state.error!,
                      tryAgainOnPressed: () {
                        context.read<SearchCubit>().search();
                      },
                    ),
                  )
                : const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  );
          default:
            return const SliverToBoxAdapter(
              child: SizedBox.shrink(),
            );
        }
      },
    );
  }

  bool _buildWhen(SearchStateStatus status) {
    return status == SearchStateStatus.searchLoading ||
        status == SearchStateStatus.searchError ||
        status == SearchStateStatus.searchSuccess;
  }
}
