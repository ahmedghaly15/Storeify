import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';

part 'fetch_favorites_state.freezed.dart';

enum FetchFavoritesStatus {
  initial,
  fetchFavoriteProductsLoading,
  fetchFavoriteProductsSuccess,
  fetchFavoriteProductsError,
  fetchFavStoresLoading,
  fetchFavStoresSuccess,
  fetchFavStoresError,
  updateSelectedFavCategory,
}

@freezed
class FetchFavoritesState with _$FetchFavoritesState {
  const factory FetchFavoritesState({
    required FetchFavoritesStatus status,
    FetchFavoriteProductsResponse? favProducts,
    FetchFavStoresResponse? favStores,
    String? error,
    @Default(0) int selectedFavCategory,
  }) = _FetchFavoritesState;

  factory FetchFavoritesState.initial() => const FetchFavoritesState(
        status: FetchFavoritesStatus.initial,
      );
}
