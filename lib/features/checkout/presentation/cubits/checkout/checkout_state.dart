import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/checkout/data/models/checkout_response.dart';

part 'checkout_state.freezed.dart';

enum CheckoutStateStatus {
  initial,
  checkoutLoading,
  checkoutSuccess,
  checkoutError,
  changingCheckoutHour,
  changingCheckoutMinutes,
  onCountryChanged,
  onPickingDate,
}

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    required CheckoutStateStatus status,
    @Default(0) int checkoutHour,
    @Default(0) int checkoutMinutes,
    @Default('') String phoneNumber,
    @Default('') String date,
    CheckoutResponse? checkout,
    String? error,
  }) = _CheckoutState;

  factory CheckoutState.initial() => CheckoutState(
        status: CheckoutStateStatus.initial,
        checkoutHour:
            DateTime.now().hour % 12 == 0 ? 12 : DateTime.now().hour % 12,
        checkoutMinutes: DateTime.now().minute,
      );
}
