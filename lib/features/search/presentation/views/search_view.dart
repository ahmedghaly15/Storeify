import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/app_bar_actions.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/search/presentation/widgets/hero_search_field_bloc_builder.dart';
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
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              actions: [
                Container(
                  margin: EdgeInsetsDirectional.only(end: 16.w),
                  child: const AppBarActions(),
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: HeroSearchFieldBlocBuilder(),
            ),
            const SearchResultBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
