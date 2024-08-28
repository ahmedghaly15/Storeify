import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_state.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorite_products_grid_view.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorite_stores_grid_view.dart';

class FavoritesGridViewBlocBuilder extends StatelessWidget {
  const FavoritesGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFavoritesCubit, FetchFavoritesState>(
      buildWhen: (_, current) =>
          current is UpdateSelectedFavCategory ||
          current is FetchFavStoresLoading ||
          current is FetchFavStoresSuccess ||
          current is FetchFavStoresError ||
          current is FetchFavoriteProductsLoading ||
          current is FetchFavoriteProductsSuccess ||
          current is FetchFavoriteProductsError,
      builder: (context, state) => state.maybeWhen(
        fetchFavStoresLoading: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
        fetchFavStoresSuccess: (favStoresResponse) =>
            FavoriteStoresGridView(stores: favStoresResponse.stores),
        fetchFavStoresError: (errorKey) => CustomErrorWidget(
          onPressed: () {},
          error: errorKey,
        ),
        fetchFavoriteProductsLoading: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
        fetchFavoriteProductsSuccess: (favProductsResponse) =>
            FavoriteProductsGridView(products: favProductsResponse.products),
        fetchFavoriteProductsError: (errorKey) => CustomErrorWidget(
          onPressed: () {},
          error: errorKey,
        ),
        orElse: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
      ),
    );
  }
}
