import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/widgets/hero_search_field.dart';
import 'package:store_ify/features/search/presentation/widgets/search_result_bloc_builder.dart';

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
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(),
            SliverToBoxAdapter(
              child: HeroSearchField(),
            ),
            SearchResultBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
