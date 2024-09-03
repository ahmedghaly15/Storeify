import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(const CheckoutState.initial()) {
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
