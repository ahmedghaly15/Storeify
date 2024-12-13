import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';

part 'payment_method_state.freezed.dart';

enum PaymentMethodStateStatus {
  initial,
  selectingPaymentMethod,
  choosePaymentMethodLoading,
  choosePaymentMethodSuccess,
  choosePaymentMethodError,
}

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState({
    required PaymentMethodStateStatus status,
    PaymentMethod? selectedPaymentMethod,
    String? error,
  }) = _PaymentMethodState;

  factory PaymentMethodState.initial() => PaymentMethodState(
        status: PaymentMethodStateStatus.initial,
        selectedPaymentMethod: AppConstants.paymentMethods[0],
      );
}
