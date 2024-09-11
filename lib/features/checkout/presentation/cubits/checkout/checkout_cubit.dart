import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/repositories/checkout_repo.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutRepo _checkoutRepo;

  CheckoutCubit(
    this._checkoutRepo,
  ) : super(const CheckoutState.initial()) {
    _getCountryCode();
    _initFormAttributes();
  }

  late final TextEditingController usernameController;
  late final TextEditingController addressController;
  late final TextEditingController dateController;
  String phoneNumber = '';
  late final GlobalKey<FormState> formKey;
  final CancelToken _cancelToken = CancelToken();

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    usernameController = TextEditingController();
    addressController = TextEditingController();
    dateController = TextEditingController();
    usernameController.text = currentUser?.user.username ?? '';
  }

  String? countryCode;

  void _getCountryCode() async {
    countryCode = await LocationService.getCountryCode();
    emit(CheckoutState.getCurrentCountryCode(countryCode!));
  }

  int hours = 4;
  int minutes = 0;

  void changeHours(int value) {
    hours = value;
    emit(CheckoutState.changeCheckoutHour(hours));
  }

  void changeMinutes(int value) {
    minutes = value;
    emit(CheckoutState.changeCheckoutMinutes(minutes));
  }

  void onCountryChanged(String phoneNumber) {
    this.phoneNumber = phoneNumber;
    emit(CheckoutState.onCountryChanged(phoneNumber));
  }

  void _onDatePicked(DateTime date) {
    dateController.text = DateFormat('yyyy-MM-dd').format(date);
    emit(CheckoutState.onDatePicked(dateController.text));
  }

  Future<void> pickDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null) {
      _onDatePicked(pickedDate);
    }
  }

  void _checkout() async {
    emit(const CheckoutState.checkoutLoading());
    final result = await _checkoutRepo.checkout(
      CheckoutParams(
        username: currentUser?.user.username ?? usernameController.text,
        address: addressController.text,
        phone: phoneNumber,
        date: dateController.text,
        time: _formatTime(hours, minutes),
      ),
      _cancelToken,
    );
    result.when(
      success: (checkout) => emit(CheckoutState.checkoutSuccess(checkout)),
      error: (error) => emit(CheckoutState.checkoutError(error.error ?? '')),
    );
  }

  void checkoutAndValidateForm() {
    if (formKey.currentState!.validate()) {
      _checkout();
    }
  }

  String _formatTime(int hour, int minute) {
    String zeroPad(int value) => value.toString().padLeft(2, '0');
    String formattedHour = zeroPad(hour);
    String formattedMinute = zeroPad(minute);
    return '$formattedHour:$formattedMinute';
  }

  void _disposeControllers() {
    usernameController.dispose();
    addressController.dispose();
    dateController.dispose();
  }

  @override
  Future<void> close() {
    _disposeControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
