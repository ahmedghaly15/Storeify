import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(const CheckoutState.initial()) {
    _getCountryCode();
    _initFormAttributes();
  }

  late final TextEditingController usernameController;
  late final TextEditingController addressController;
  late final TextEditingController phoneController;
  late final TextEditingController dateController;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    usernameController = TextEditingController();
    addressController = TextEditingController();
    phoneController = TextEditingController();
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

  void _disposeControllers() {
    usernameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    dateController.dispose();
  }

  @override
  Future<void> close() {
    _disposeControllers();
    return super.close();
  }
}
