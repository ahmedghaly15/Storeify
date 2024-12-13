import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/repositories/checkout_repo.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

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
    // TODO: use open street api to init this controller with the current address
    addressController = TextEditingController();
    dateController = TextEditingController();
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

  void onCountryChanged(String phoneNumber) {
    emit(state.copyWith(
      status: CheckoutStateStatus.onCountryChanged,
      phoneNumber: phoneNumber,
    ));
  }

  void onDatePicked(DateTime date) {
    emit(state.copyWith(
      status: CheckoutStateStatus.onPickingDate,
      date: DateFormat('yyyy-MM-dd').format(date),
    ));
    dateController.text = DateFormat('yyyy-MM-dd').format(date);
  }

  void _checkout() async {
    emit(state.copyWith(
      status: CheckoutStateStatus.checkoutLoading,
    ));
    final result = await _checkoutRepo.checkout(
      CheckoutParams(
        username: usernameController.text,
        address: addressController.text,
        phone: state.phoneNumber,
        date: state.date,
        time: _formatTime(state.checkoutHour, state.checkoutMinutes),
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
