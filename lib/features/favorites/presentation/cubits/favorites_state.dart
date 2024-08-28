import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState<T> with _$FavoritesState<T> {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.preferProductLoading() = PreferProductLoading;
  const factory FavoritesState.preferProductSuccess() = PreferProductSuccess;
  const factory FavoritesState.preferProductError(String error) =
      PreferProductError<T>;
}
