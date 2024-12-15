import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;

  CartCubit(this._cartRepo) : super(CartState.initial());

  final CancelToken _cancelToken = CancelToken();

  Future<void> fetchCart() async {
    emit(state.copyWith(
      status: CartStateStatus.fetchCartLoading,
    ));
    final result = await _cartRepo.fetchCart(_cancelToken);
    result.when(
      success: (cart) => emit(state.copyWith(
        status: CartStateStatus.fetchCartSuccess,
        cart: cart,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: CartStateStatus.fetchCartError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void removeProductFromCart(int productId) async {
    emit(state.copyWith(
      status: CartStateStatus.removeProductFromCartLoading,
    ));
    final result = await _cartRepo.removeProductFromCart(
      productId,
      _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: CartStateStatus.removeProductFromCartSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: CartStateStatus.removeProductFromCartError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void increaseProductQuantity() {
    emit(state.copyWith(
      status: CartStateStatus.increaseProductQuantity,
      productQuantity: state.productQuantity + 1,
    ));
  }

  void decreaseProductQuantity() {
    if (state.productQuantity > 1) {
      emit(state.copyWith(
        status: CartStateStatus.decreaseProductQuantity,
        productQuantity: state.productQuantity - 1,
      ));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
