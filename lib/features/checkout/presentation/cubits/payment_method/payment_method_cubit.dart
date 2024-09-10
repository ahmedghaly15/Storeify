import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/data/models/choose_payment_method_params.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';
import 'package:store_ify/features/checkout/data/repositories/checkout_repo.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit(
    this._checkoutRepo,
  ) : super(const PaymentMethodState.initial());

  final CheckoutRepo _checkoutRepo;
  final CancelToken _cancelToken = CancelToken();

  PaymentMethod selectedPaymentMethod = AppConstants.paymentMethods[0];
  void updateSelectedPaymentMethod(PaymentMethod paymentMethod) {
    if (selectedPaymentMethod != paymentMethod) {
      selectedPaymentMethod = paymentMethod;
      emit(PaymentMethodState.updateSelectedPaymentMethod(paymentMethod));
    }
  }

  void choosePaymentMethod(int paymentId) async {
    emit(const PaymentMethodState.choosePaymentMethodLoading());
    final result = await _checkoutRepo.choosePaymentMethod(
      ChoosePaymentMethodParams(
        paymentId: paymentId,
        paymentMethod: selectedPaymentMethod.name,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) =>
          emit(const PaymentMethodState.choosePaymentMethodSuccess()),
      error: (error) =>
          emit(PaymentMethodState.choosePaymentMethodError(error.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
