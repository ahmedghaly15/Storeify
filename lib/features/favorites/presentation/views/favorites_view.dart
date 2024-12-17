import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/favorites/data/datasources/favorites_local_datasource.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorite_categories_list_view.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorites_grid_view_bloc_builder.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

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
    return SafeArea(
      child: RefreshIndicator.adaptive(
        onRefresh: () async {
          context.read<FetchFavoritesCubit>().selectedFavCategory == 0
              ? await FavoritesLocalDatasource.deleteCachedFavStores()
              : await FavoritesLocalDatasource.deleteCachedFavProducts();
          await context.read<FetchFavoritesCubit>().fetchSelectedCategoryFavs();
        },
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(
              titleKey: LocaleKeys.favorites,
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
