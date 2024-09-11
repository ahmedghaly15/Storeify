import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();
  late final TextEditingController cardTypeController;
  late final TextEditingController cardNumberController;
  late final TextEditingController cardHolderNumberController;
  late final TextEditingController expiryDateController;
  late final TextEditingController cvvController;
  late final FocusNode cardTypeFocusNode;
  late final FocusNode cardNumberFocusNode;
  late final FocusNode cardHolderNumberFocusNode;
  late final FocusNode expiryDateFocusNode;
  late final FocusNode cvvFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    _initControllers();
    _initFocusNodes();
  }

  void _initControllers() {
    formKey = GlobalKey<FormState>();
    cardTypeController = TextEditingController();
    cardNumberController = TextEditingController();
    cardHolderNumberController = TextEditingController();
    expiryDateController = TextEditingController();
    cvvController = TextEditingController();
  }

  void _initFocusNodes() {
    cardTypeFocusNode = FocusNode();
    cardNumberFocusNode = FocusNode();
    cardHolderNumberFocusNode = FocusNode();
    expiryDateFocusNode = FocusNode();
    cvvFocusNode = FocusNode();
  }

  void _disposeFormAttributes() {
    _disposeControllers();
    _disposeFocusNodes();
  }

  void _disposeControllers() {
    cardTypeController.dispose();
    cardNumberController.dispose();
    cardHolderNumberController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();
  }

  void _disposeFocusNodes() {
    cardTypeFocusNode.dispose();
    cardNumberFocusNode.dispose();
    cardHolderNumberFocusNode.dispose();
    expiryDateFocusNode.dispose();
    cvvFocusNode.dispose();
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    _cancelToken.cancel();
    return super.close();
  }
}
