import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorites_response.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState<T> with _$FavoritesState<T> {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.preferProductLoading() = PreferProductLoading;
  const factory FavoritesState.preferProductSuccess() = PreferProductSuccess;
  const factory FavoritesState.preferProductError(String error) =
      PreferProductError<T>;
  const factory FavoritesState.removeProductFromFavsLoading() =
      RemoveProductFromFavsLoading;
  const factory FavoritesState.removeProductFromFavsSuccess() =
      RemoveProductFromFavsSuccess;
  const factory FavoritesState.removeProductFromFavsError(String error) =
      RemoveProductFromFavsError<T>;
  const factory FavoritesState.fetchFavoritesLoading() = FetchFavoritesLoading;
  const factory FavoritesState.fetchFavoritesSuccess(
      FetchFavoritesResponse favorites) = FetchFavoritesSuccess<T>;
  const factory FavoritesState.fetchFavoritesError(String error) =
      FetchFavoritesError<T>;
}
