import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_error_widget.dart';
import 'package:store_ify/core/widgets/products_grid_view_shimmer.dart';
import 'package:store_ify/core/widgets/stores_grid_view_shimmer.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_state.dart';
import 'package:store_ify/features/favorites/presentation/widgets/empty_favorites_widget.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorite_products_grid_view.dart';
import 'package:store_ify/features/favorites/presentation/widgets/favorite_stores_grid_view.dart';

class FavoritesGridViewBlocBuilder extends StatelessWidget {
  const FavoritesGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFavoritesCubit, FetchFavoritesState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case FetchFavoritesStatus.fetchFavStoresLoading:
            return const StoresGridViewShimmer();
          case FetchFavoritesStatus.fetchFavStoresSuccess:
            return state.favStores!.stores.isEmpty
                ? const EmptyFavoritesWidget()
                : FavoriteStoresGridView(stores: state.favStores!.stores);
          case FetchFavoritesStatus.fetchFavStoresError:
            return state.favStores != null
                ? (state.favStores!.stores.isEmpty
                    ? const EmptyFavoritesWidget()
                    : FavoriteStoresGridView(stores: state.favStores!.stores))
                : CustomErrorWidget(
                    tryAgainOnPressed: () =>
                        context.read<FetchFavoritesCubit>().fetchFavStores(),
                    errorKey: state.error!,
                  );
          case FetchFavoritesStatus.fetchFavoriteProductsLoading:
            return const ProductsGridViewShimmer();
          case FetchFavoritesStatus.fetchFavoriteProductsSuccess:
            return state.favProducts!.products.isEmpty
                ? const EmptyFavoritesWidget()
                : FavoriteProductsGridView(
                    products: state.favProducts!.products,
                  );
          case FetchFavoritesStatus.fetchFavoriteProductsError:
            return state.favProducts != null
                ? (state.favProducts!.products.isEmpty
                    ? const EmptyFavoritesWidget()
                    : FavoriteProductsGridView(
                        products: state.favProducts!.products,
                      ))
                : CustomErrorWidget(
                    tryAgainOnPressed: () =>
                        context.read<FetchFavoritesCubit>().fetchFavProducts(),
                    errorKey: state.error!,
                  );
          default:
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
        }
      },
    );
  }

  bool _buildWhen(FetchFavoritesStatus status) {
    return status == FetchFavoritesStatus.updateSelectedFavCategory ||
        status == FetchFavoritesStatus.fetchFavStoresLoading ||
        status == FetchFavoritesStatus.fetchFavStoresSuccess ||
        status == FetchFavoritesStatus.fetchFavStoresError ||
        status == FetchFavoritesStatus.fetchFavoriteProductsLoading ||
        status == FetchFavoritesStatus.fetchFavoriteProductsSuccess ||
        status == FetchFavoritesStatus.fetchFavoriteProductsError;
  }
}
