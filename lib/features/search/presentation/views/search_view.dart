import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/widgets/custom_search_text_field.dart';
import 'package:store_ify/features/search/presentation/widgets/search_data_title_bloc_builder.dart';
import 'package:store_ify/features/search/presentation/widgets/search_result_bloc_builder.dart';
import 'package:store_ify/features/search/presentation/widgets/search_data_sliver_grid_bloc_builder.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

@RoutePage()
class SearchView extends StatelessWidget implements AutoRouteWrapper {
  const SearchView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (_) => getIt.get<SearchCubit>()..fetchSearchData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(),
            SliverToBoxAdapter(
              child: Hero(
                tag: LocaleKeys.search,
                child: Material(
                  color: Colors.transparent,
                  child: CustomSearchTextField(
                    controller: context.read<SearchCubit>().searchController,
                    onChanged: (newText) =>
                        context.read<SearchCubit>().debouncedSearch(newText),
                  ),
                ),
              ),
            ),
            const SearchResultBlocBuilder(),
            const SearchDataTitleBlocBuilder(
              titleKey: LocaleKeys.topCategories,
            ),
            const SearchDataSliverGridBlocBuilder(),
            const SearchDataTitleBlocBuilder(
              titleKey: LocaleKeys.topStores,
            ),
            const SearchDataSliverGridBlocBuilder(
              searchDataType: SearchDataType.topStores,
            ),
          ],
        ),
      ),
    );
  }
}
