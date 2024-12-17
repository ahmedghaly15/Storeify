import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/checkout/data/models/choose_payment_method_params.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';
import 'package:store_ify/features/checkout/data/repositories/checkout_repo.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit(
    this._checkoutRepo,
  ) : super(PaymentMethodState.initial());

  final CheckoutRepo _checkoutRepo;
  final CancelToken _cancelToken = CancelToken();

  PaymentMethod get selectedPaymentMethod => state.selectedPaymentMethod!;
  void updateSelectedPaymentMethod(PaymentMethod paymentMethod) {
    if (state.selectedPaymentMethod != paymentMethod) {
      emit(state.copyWith(
        status: PaymentMethodStateStatus.selectingPaymentMethod,
        selectedPaymentMethod: paymentMethod,
      ));
    }
  }

  void selectPaymentMethod() async {
    emit(state.copyWith(
      status: PaymentMethodStateStatus.choosePaymentMethodLoading,
    ));
    final result = await _checkoutRepo.choosePaymentMethod(
      ChoosePaymentMethodParams(
        paymentId: state.selectedPaymentMethod!.id,
        paymentMethod: state.selectedPaymentMethod!.name,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: PaymentMethodStateStatus.choosePaymentMethodSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: PaymentMethodStateStatus.choosePaymentMethodError,
        error: errorModel.error ?? '',
      )),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
