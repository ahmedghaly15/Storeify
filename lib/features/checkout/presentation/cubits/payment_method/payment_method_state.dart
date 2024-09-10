import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';

part 'payment_method_state.freezed.dart';

@freezed
class PaymentMethodState<T> with _$PaymentMethodState<T> {
  const factory PaymentMethodState.initial() = _Initial;
  const factory PaymentMethodState.updateSelectedPaymentMethod(
      PaymentMethod paymentMethod) = UpdateSelectedPaymentMethod<T>;
  const factory PaymentMethodState.choosePaymentMethodLoading() =
      ChoosePaymentMethodLoading;
  const factory PaymentMethodState.choosePaymentMethodSuccess() =
      ChoosePaymentMethodSuccess;
  const factory PaymentMethodState.choosePaymentMethodError(String error) =
      ChoosePaymentMethodError<T>;
}
