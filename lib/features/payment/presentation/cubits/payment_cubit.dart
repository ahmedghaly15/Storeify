import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';
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
  late AutovalidateMode autoValidateMode;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    autoValidateMode = AutovalidateMode.disabled;
    _initControllers();
    _initFocusNodes();
  }

  void _pay(int orderId) async {
    emit(const PaymentState.payLoading());
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
      success: (_) => emit(const PaymentState.paySuccess()),
      error: (error) => emit(PaymentState.payError(error.error ?? '')),
    );
  }

  void payAndValidateForm(BuildContext context, int orderId) {
    if (formKey.currentState!.validate()) {
      context.unfocusKeyboard();
      _pay(orderId);
    } else {
      if (autoValidateMode != AutovalidateMode.always) {
        _alwaysAutovalidateMode();
      }
    }
  }

  void _alwaysAutovalidateMode() {
    autoValidateMode = AutovalidateMode.always;
    emit(const PaymentState.alwaysAutoValidateMode(AutovalidateMode.always));
  }

  bool checkboxValue = false;
  void toggleCheckBox(bool? value) {
    if (checkboxValue != value) {
      checkboxValue = value ?? false;
      emit(PaymentState.toggleCheckBox(checkboxValue));
    }
  }

  CardType selectedCardType = AppConstants.cardTypes[0];

  void updateSelectedCardType(CardType cardType) {
    if (selectedCardType != cardType) {
      selectedCardType = cardType;
      emit(PaymentState.updateSelectedCardType(cardType));
    }
  }

  void _initControllers() {
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
