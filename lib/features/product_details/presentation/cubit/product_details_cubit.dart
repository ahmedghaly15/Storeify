import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/models/product_color.dart';
import 'package:store_ify/core/models/product_size.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo.dart';
import 'package:store_ify/features/product_details/presentation/cubit/product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final CartRepo _cartRepo;

  ProductDetailsCubit(this._cartRepo) : super(ProductDetailsState.initial());

  final CancelToken _cancelToken = CancelToken();

  void addProductToCart(int productId) async {
    emit(state.copyWith(
      status: ProductDetailsStateStatus.addProductToCartLoading,
    ));
    final addProductToCartParams = AddProductToCartParams(
      productId: productId,
      colorId: state.selectedProductColor!.id,
      sizeId: state.selectedProductSize!.id,
      quantity: state.productQuantity,
    );
    final result = await _cartRepo.addProductToCart(
      addProductToCartParams,
      _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: ProductDetailsStateStatus.addProductToCartSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: ProductDetailsStateStatus.addProductToCartError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void increaseProductQuantity() {
    emit(state.copyWith(
      status: ProductDetailsStateStatus.increaseProductQuantity,
      productQuantity: state.productQuantity + 1,
    ));
  }

  void decreaseProductQuantity() {
    if (state.productQuantity > 1) {
      emit(state.copyWith(
        status: ProductDetailsStateStatus.decreaseProductQuantity,
        productQuantity: state.productQuantity - 1,
      ));
    }
  }

  void updateSelectedProductSize(ProductSize productSize) {
    emit(state.copyWith(
      status: ProductDetailsStateStatus.selectProductSize,
      selectedProductSize: productSize,
    ));
  }

  void updateSelectedProductColor(ProductColor productColor) {
    emit(state.copyWith(
      status: ProductDetailsStateStatus.selectProductColor,
      selectedProductColor: productColor,
    ));
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
