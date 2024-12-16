import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/data/models/checkout_response.dart';

part 'checkout_state.freezed.dart';

enum CheckoutStateStatus {
  initial,
  checkoutLoading,
  checkoutSuccess,
  checkoutError,
  changingCheckoutHour,
  changingCheckoutMinutes,
  updatePhoneNumber,
  enableLocationPermissionLoading,
  enableLocationPermissionSuccess,
  enableLocationPermissionError,
  fetchCityDataLoading,
  fetchCityDataSuccess,
  fetchCityDataError,
}

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    required CheckoutStateStatus status,
    @Default(0) int checkoutHour,
    @Default(0) int checkoutMinutes,
    PhoneNumber? phone,
    @Default('') String phoneNumber,
    CheckoutResponse? checkout,
    String? error,
    @Default(AppConstants.defaultCountryCode) String countryCode,
    Position? currentPosition,
  }) = _CheckoutState;

  factory CheckoutState.initial() => CheckoutState(
        status: CheckoutStateStatus.initial,
        checkoutHour:
            DateTime.now().hour % 12 == 0 ? 12 : DateTime.now().hour % 12,
        checkoutMinutes: DateTime.now().minute,
      );
}
