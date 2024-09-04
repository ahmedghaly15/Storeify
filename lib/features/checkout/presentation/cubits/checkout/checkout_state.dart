import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_state.freezed.dart';

@freezed
class CheckoutState<T> with _$CheckoutState<T> {
  const factory CheckoutState.initial() = _Initial;
}
