import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState<T> with _$CartState<T> {
  const factory CartState.initial() = Initial;
  const factory CartState.addProductToCartLoading() = AddProductToCartLoading;
  const factory CartState.addProductToCartSuccess() = AddProductToCartSuccess;
  const factory CartState.addProductToCartError(String error) =
      AddProductToCartError<T>;
  const factory CartState.fetchCartLoading() = FetchCartLoading;
  const factory CartState.fetchCartSuccess(FetchCartResponse cart) =
      FetchCartSuccess<T>;
  const factory CartState.fetchCartError(String error) = FetchCartError<T>;
}
