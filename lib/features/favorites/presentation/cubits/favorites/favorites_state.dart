import 'package:freezed_annotation/freezed_annotation.dart';

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
  const factory FavoritesState.preferStoreLoading() = PreferStoreLoading;
  const factory FavoritesState.preferStoreSuccess() = PreferStoreSuccess<T>;
  const factory FavoritesState.preferStoreError(String error) =
      PreferStoreError<T>;
  const factory FavoritesState.removeStoreFromFavsLoading() =
      RemoveStoreFromFavsLoading;
  const factory FavoritesState.removeStoreFromFavsSuccess() =
      RemoveStoreFromFavsLoSuccess;
  const factory FavoritesState.removeStoreFromFavsError(String error) =
      RemoveStoreFromFavsError<T>;
}
