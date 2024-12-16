import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/repositories/checkout_repo.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutRepo _checkoutRepo;

  CheckoutCubit(
    this._checkoutRepo,
  ) : super(CheckoutState.initial()) {
    _initFormAttributes();
  }

  late final TextEditingController usernameController;
  late final TextEditingController addressController;
  late final TextEditingController dateController;
  late final GlobalKey<FormState> formKey;
  final CancelToken _cancelToken = CancelToken();

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    usernameController = TextEditingController(
      text: currentUser?.user.username ?? '',
    );
    addressController = TextEditingController();
    dateController = TextEditingController();
  }

  void enableLocationPermission() async {
    emit(state.copyWith(
      status: CheckoutStateStatus.enableLocationPermissionLoading,
    ));
    if (await LocationService.isLocationPermissionDenied()) {
      await Geolocator.requestPermission();
      if (await LocationService.isLocationPermissionDenied()) {
        emit(state.copyWith(
          status: CheckoutStateStatus.enableLocationPermissionError,
          error: LocaleKeys.locationDenied,
        ));
        return;
      }
    }
    try {
      final currentPosition = await Geolocator.getCurrentPosition();
      emit(state.copyWith(
        status: CheckoutStateStatus.enableLocationPermissionSuccess,
        currentPosition: currentPosition,
      ));
    } catch (error) {
      emit(state.copyWith(
        status: CheckoutStateStatus.enableLocationPermissionError,
        error: LocaleKeys.defaultError,
      ));
    }
  }

  Future<void> fetchCityData() async {
    emit(state.copyWith(
      status: CheckoutStateStatus.fetchCityDataLoading,
    ));
    final result =
        await _checkoutRepo.fetchCityDataUsingPosition(state.currentPosition!);
    result.when(
      success: (address) {
        emit(state.copyWith(
          status: CheckoutStateStatus.fetchCityDataSuccess,
        ));
        addressController.text = address;
      },
      error: (errorModel) => emit(state.copyWith(
        status: CheckoutStateStatus.fetchCityDataError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void updateCountryCode() async {
    emit(state.copyWith(
      countryCode: await LocationService.getAndCacheCountryCode(),
    ));
  }

  void changeHours(int value) {
    emit(state.copyWith(
      status: CheckoutStateStatus.changingCheckoutHour,
      checkoutHour: value,
    ));
  }

  void changeMinutes(int value) {
    emit(state.copyWith(
      status: CheckoutStateStatus.changingCheckoutMinutes,
      checkoutMinutes: value,
    ));
  }

  String get phoneNumber => state.phoneNumber;
  void updatePhoneNumber(PhoneNumber phone) {
    emit(state.copyWith(
      status: CheckoutStateStatus.updatePhoneNumber,
      phone: phone,
      phoneNumber: phone.number,
    ));
  }

  void onDatePicked(DateTime date) {
    dateController.text =
        DateFormat(AppStrings.checkoutDateFormat).format(date);
  }

  void checkout() async {
    emit(state.copyWith(
      status: CheckoutStateStatus.checkoutLoading,
    ));
    final result = await _checkoutRepo.checkout(
      CheckoutParams(
        username: usernameController.text,
        address: addressController.text,
        phone: '${state.phone!.countryCode}${state.phone!.number}',
        date: dateController.text,
        time: formatTime(state.checkoutHour, state.checkoutMinutes),
      ),
      _cancelToken,
    );
    result.when(
      success: (checkout) => emit(state.copyWith(
        status: CheckoutStateStatus.checkoutSuccess,
        checkout: checkout,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: CheckoutStateStatus.checkoutError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void checkoutAndValidateForm() {
    if (formKey.currentState!.validate()) {
      checkout();
    }
  }

  String formatTime(int hour, int minute) {
    String zeroPad(int value) => value.toString().padLeft(2, '0');
    String formattedHour = zeroPad(hour);
    String formattedMinute = zeroPad(minute);
    return '$formattedHour:$formattedMinute';
  }

  void disposeControllers() {
    usernameController.dispose();
    addressController.dispose();
    dateController.dispose();
  }

  @override
  Future<void> close() {
    disposeControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
