import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/app_bar_actions.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/search/presentation/cubit/search_state.dart';
import 'package:store_ify/features/search/presentation/widgets/custom_search_text_field.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';

@RoutePage()
class SearchView extends StatelessWidget implements AutoRouteWrapper {
  const SearchView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (_) => getIt.get<SearchCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(
              actions: [
                AppBarActions(),
              ],
            ),
            SliverToBoxAdapter(
              child: Hero(
                tag: LangKeys.search,
                child: BlocBuilder<SearchCubit, SearchState>(
                  buildWhen: (_, current) => current is UpdateSearchText,
                  builder: (context, state) => CustomSearchTextField(
                    controller: context.read<SearchCubit>().searchController,
                    onChanged: (newText) =>
                        context.read<SearchCubit>().debouncedSearch(newText),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
