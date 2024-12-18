import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/empty_widget.dart';
import 'package:store_ify/core/widgets/products_grid_view_shimmer.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';
import 'package:store_ify/features/search/presentation/widgets/search_result_sliver_grid.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class SearchResultBlocBuilder extends StatelessWidget {
  const SearchResultBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case SearchStateStatus.searchLoading:
            return const SliverFillRemaining(
              child: ProductsGridViewShimmer(),
            );
          case SearchStateStatus.searchSuccess:
            return state.searchResult!.products.isNotEmpty
                ? SearchResultSliverGrid(searchResult: state.searchResult!)
                : const SliverFillRemaining(
                    hasScrollBody: false,
                    child: EmptyWidget(
                      titleKey: LocaleKeys.noResultsFound,
                      descriptionKey: LocaleKeys.tryDifferentKeywords,
                    ),
                  );
          case SearchStateStatus.searchError:
            return state.error != AppStrings.searchRequiredErrorKey
                ? SliverFillRemaining(
                    hasScrollBody: false,
                    child: CustomErrorWidget(
                      errorKey: state.error!,
                      tryAgainOnPressed: () =>
                          context.read<SearchCubit>().search(),
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
