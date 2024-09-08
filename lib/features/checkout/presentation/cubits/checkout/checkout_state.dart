import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_state.freezed.dart';

@freezed
class CheckoutState<T> with _$CheckoutState<T> {
  const factory CheckoutState.initial() = _Initial;
  const factory CheckoutState.getCurrentCountryCode(String countryCode) =
      GetCurrentCountryCode<T>;
  const factory CheckoutState.changeCheckoutHour(int value) =
      ChangeCheckoutHour<T>;
  const factory CheckoutState.changeCheckoutMinutes(int value) =
      ChangeCheckoutMinutes<T>;
}
