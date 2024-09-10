import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_payment_method_params.freezed.dart';

@freezed
class ChoosePaymentMethodParams with _$ChoosePaymentMethodParams {
  const factory ChoosePaymentMethodParams({
    required int paymentId,
    required String paymentMethod,
  }) = _ChoosePaymentMethodParams;
}
