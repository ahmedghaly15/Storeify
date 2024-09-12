import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorite_categories_list_view.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorites_grid_view_bloc_builder.dart';

@RoutePage()
class FavoritesView extends StatelessWidget implements AutoRouteWrapper {
  const FavoritesView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<FetchFavoritesCubit>(
      create: (_) => getIt.get<FetchFavoritesCubit>()..fetchFavStores(),
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
              titleKey: LangKeys.favorites,
              hasLeading: false,
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: AppConstants.categoryMargin,
                height: 25.h,
                child: const FavoriteCategoriesListView(),
              ),
            ),
            const SliverFillRemaining(
              child: FavoritesGridViewBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
