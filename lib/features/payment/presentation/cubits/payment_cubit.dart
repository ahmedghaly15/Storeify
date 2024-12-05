import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';
import 'package:store_ify/features/payment/data/models/pay_params.dart';
import 'package:store_ify/features/payment/data/repositories/payment_repo.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentRepo _paymentRepo;

  PaymentCubit(this._paymentRepo) : super(PaymentState.initial()) {
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
    formKey = GlobalKey<FormState>();
    cardTypeController = TextEditingController();
    cardNumberController = TextEditingController();
    cardHolderNumberController = TextEditingController();
    expiryDateController = TextEditingController();
    cvvController = TextEditingController();
    cardHolderNumberFocusNode = FocusNode();
    expiryDateFocusNode = FocusNode();
    cvvFocusNode = FocusNode();
  }

  void _pay(int orderId) async {
    emit(state.copyWith(status: PaymentStateStatus.payLoading));
    final result = await _paymentRepo.pay(
      PayParams(
        orderId: orderId,
        number: cardNumberController.text.trim(),
        cvc: cvvController.text,
        // TODO: from where will i get this amount?
        amount: "0",
        expYear: "55",
        expMonth: "5898",
      ),
      _cancelToken,
    );
    result.when(
      success: (_) =>
          emit(state.copyWith(status: PaymentStateStatus.paySuccess)),
      error: (errorModel) => emit(state.copyWith(
        status: PaymentStateStatus.payError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void payAndValidateForm(int orderId) {
    if (formKey.currentState!.validate()) {
      _pay(orderId);
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    emit(state.copyWith(
      status: PaymentStateStatus.alwaysAutoValidateMode,
      autovalidateMode: AutovalidateMode.always,
    ));
  }

  void toggleCheckBox(bool? value) {
    if (state.checkboxValue != value) {
      emit(state.copyWith(
        status: PaymentStateStatus.toggleCheckBox,
        checkboxValue: value ?? false,
      ));
    }
  }

  void updateSelectedCardType(CardType cardType) {
    if (state.selectedCardType != cardType) {
      emit(state.copyWith(
        status: PaymentStateStatus.updateSelectedCardType,
        selectedCardType: cardType,
      ));
    }
  }

  void _disposeFormAttributes() {
    cardTypeController.dispose();
    cardNumberController.dispose();
    cardHolderNumberController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();
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
