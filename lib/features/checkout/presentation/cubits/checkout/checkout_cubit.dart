import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(const CheckoutState.initial()) {
    _getCountryCode();
    _initFormAttributes();
  }

  late final TextEditingController usernameController;
  late final TextEditingController addressController;
  late final TextEditingController dateController;
  String phoneNumber = '';
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    usernameController = TextEditingController();
    addressController = TextEditingController();
    dateController = TextEditingController();
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
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      _onDatePicked(pickedDate);
    }
  }

  void _disposeControllers() {
    usernameController.dispose();
    addressController.dispose();
    dateController.dispose();
  }

  @override
  Future<void> close() {
    _disposeControllers();
    return super.close();
  }
}
