import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/home/presentation/widgets/custom_hero_search_text_field.dart';
import 'package:store_ify/features/home/presentation/widgets/favorites_action_bloc_listener.dart';
import 'package:store_ify/features/home/presentation/widgets/home_data_bloc_builder.dart';
import 'package:store_ify/features/home/presentation/widgets/show_location_dialog_bloc_listener.dart';
import 'package:store_ify/features/home/presentation/widgets/home_custom_app_bar.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => getIt.get<HomeCubit>()..fetchHomeData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.physics,
          slivers: [
            SliverToBoxAdapter(
              child: HomeCustomAppBar(),
            ),
            SliverToBoxAdapter(
              child: CustomHeroSearchTextField(),
            ),
            SliverToBoxAdapter(
              child: ShowLocationDialogBlocListener(),
            ),
            SliverToBoxAdapter(
              child: FavoritesActionBlocListener(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: HomeDataBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
