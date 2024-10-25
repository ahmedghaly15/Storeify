import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';

part 'fetch_favorites_state.freezed.dart';

@freezed
class FetchFavoritesState<T> with _$FetchFavoritesState<T> {
  const factory FetchFavoritesState.initial() = _Initial;
  const factory FetchFavoritesState.fetchFavoriteProductsLoading() =
      FetchFavoriteProductsLoading;
  const factory FetchFavoritesState.fetchFavoriteProductsSuccess(
          FetchFavoriteProductsResponse favorites) =
      FetchFavoriteProductsSuccess<T>;
  const factory FetchFavoritesState.fetchFavoriteProductsError(String error) =
      FetchFavoriteProductsError<T>;
  const factory FetchFavoritesState.updateSelectedFavCategory(
      int selectedFavCategory) = UpdateSelectedFavCategory<T>;
  const factory FetchFavoritesState.fetchFavStoresLoading() =
      FetchFavStoresLoading;
  const factory FetchFavoritesState.fetchFavStoresSuccess(
      FetchFavStoresResponse favStores) = FetchFavStoresSuccess<T>;
  const factory FetchFavoritesState.fetchFavStoresError(String error) =
      FetchFavStoresError<T>;
}
