import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/favorites/data/models/prefer_product_response.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState<T> with _$FavoritesState<T> {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.preferProductLoading() = PreferProductLoading;
  const factory FavoritesState.preferProductSuccess(
      PreferProductResponse preferProductResponse) = PreferProductSuccess<T>;
  const factory FavoritesState.preferProductError(String error) =
      PreferProductError<T>;
}
