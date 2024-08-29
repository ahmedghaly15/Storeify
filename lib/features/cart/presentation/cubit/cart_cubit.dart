import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this._cartRepo) : super(const CartState.initial());

  final CartRepo _cartRepo;
  final CancelToken _cancelToken = CancelToken();

  void addProductToCart(AddProductToCartParams params) async {
    emit(const CartState.addProductToCartLoading());
    final result = await _cartRepo.addProductToCart(
      params,
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const CartState.addProductToCartSuccess()),
      error: (errorModel) =>
          emit(CartState.addProductToCartError(errorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
