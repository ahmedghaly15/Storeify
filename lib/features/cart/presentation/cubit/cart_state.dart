import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState<T> with _$CartState<T> {
  const factory CartState.initial() = Initial;
  const factory CartState.addProductToCartLoading() = AddProductToCartLoading;
  const factory CartState.addProductToCartSuccess() = AddProductToCartSuccess;
  const factory CartState.addProductToCartError(String error) =
      AddProductToCartError<T>;
}
