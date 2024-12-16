import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/product_color.dart';
import 'package:store_ify/core/models/product_size.dart';

part 'product_details_state.freezed.dart';

enum ProductDetailsStateStatus {
  initial,
  selectProductSize,
  selectProductColor,
  addProductToCartLoading,
  addProductToCartSuccess,
  addProductToCartError,
  increaseProductQuantity,
  decreaseProductQuantity,
}

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    required ProductDetailsStateStatus status,
    ProductSize? selectedProductSize,
    ProductColor? selectedProductColor,
    @Default(1) int productQuantity,
    String? error,
  }) = _ProductDetailsState;

  factory ProductDetailsState.initial() => const ProductDetailsState(
        status: ProductDetailsStateStatus.initial,
      );
}
