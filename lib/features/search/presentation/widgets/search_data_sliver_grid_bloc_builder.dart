import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';
import 'package:store_ify/features/search/presentation/widgets/search_data_sliver_grid.dart';

enum SearchDataType { topCategories, topStores }

class SearchDataSliverGridBlocBuilder extends StatelessWidget {
  const SearchDataSliverGridBlocBuilder({
    super.key,
    this.searchDataType = SearchDataType.topCategories,
  });

  final SearchDataType searchDataType;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case SearchStateStatus.searchLoading ||
                SearchStateStatus.searchSuccess:
            return const SliverToBoxAdapter(
              child: SizedBox.shrink(),
            );
          case SearchStateStatus.searchError:
            return state.error == AppStrings.searchRequiredErrorKey
                ? SearchDataSliverGrid(
                    searchData: searchDataType == SearchDataType.topCategories
                        ? state.searchData!.topCategories
                        : state.searchData!.topStores,
                  )
                : const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  );
          case SearchStateStatus.fetchSearchDataSuccess:
            return SearchDataSliverGrid(
              searchData: searchDataType == SearchDataType.topCategories
                  ? state.searchData!.topCategories
                  : state.searchData!.topStores,
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
    return status == SearchStateStatus.fetchSearchDataSuccess ||
        status == SearchStateStatus.searchSuccess ||
        status == SearchStateStatus.searchLoading ||
        status == SearchStateStatus.searchError;
  }
}
