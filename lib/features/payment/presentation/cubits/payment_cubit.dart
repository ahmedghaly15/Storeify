import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/payment/data/models/pay_params.dart';
import 'package:store_ify/features/payment/data/repositories/payment_repo.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentRepo _paymentRepo;

  PaymentCubit(this._paymentRepo) : super(const PaymentState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();
  late final TextEditingController cardTypeController;
  late final TextEditingController cardNumberController;
  late final TextEditingController cardHolderNumberController;
  late final TextEditingController expiryDateController;
  late final TextEditingController cvvController;
  late final FocusNode cardHolderNumberFocusNode;
  late final FocusNode expiryDateFocusNode;
  late final FocusNode cvvFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    _initControllers();
    _initFocusNodes();
  }

  void pay(PayParams params) async {
    emit(const PaymentState.payLoading());
    final result = await _paymentRepo.pay(
      params,
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const PaymentState.paySuccess()),
      error: (error) => emit(PaymentState.payError(error.error ?? '')),
    );
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
