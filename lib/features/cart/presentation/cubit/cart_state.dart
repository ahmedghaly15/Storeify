import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';

part 'cart_state.freezed.dart';

enum CartStateStatus {
  initial,
  addProductToCartLoading,
  addProductToCartSuccess,
  addProductToCartError,
  fetchCartLoading,
  fetchCartSuccess,
  fetchCartError,
  removeProductFromCartLoading,
  removeProductFromCartSuccess,
  removeProductFromCartError,
}

@freezed
class CartState with _$CartState {
  const factory CartState({
    required CartStateStatus status,
    String? error,
    FetchCartResponse? cart,
  }) = _CartState;

  factory CartState.initial() => const CartState(
        status: CartStateStatus.initial,
      );
}
