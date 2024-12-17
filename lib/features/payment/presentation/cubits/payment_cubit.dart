import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:store_ify/features/payment/data/datasource/payment_local_datasource.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';
import 'package:store_ify/features/payment/data/models/payment_card_details.dart';
import 'package:store_ify/features/payment/data/repositories/payment_repo.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentRepo _paymentRepo;

  PaymentCubit(this._paymentRepo) : super(PaymentState.initial()) {
    _initFormAttributes();
  }
  final CancelToken _cancelToken = CancelToken();
  late final TextEditingController cardNumberController;
  late final TextEditingController cardHolderNumberController;
  late final TextEditingController expiryDateController;
  late final TextEditingController cvvController;
  late final FocusNode cardHolderNumberFocusNode;
  late final FocusNode expiryDateFocusNode;
  late final FocusNode cvvFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() async {
    emit(state.copyWith(
      status: PaymentStateStatus.retrieveCachedPaymentCardDetails,
    ));
    final cachedPaymentCardDetails =
        await PaymentLocalDatasource.retrieveCachedCardDetails();
    formKey = GlobalKey<FormState>();
    cardNumberController = TextEditingController(
      text: cachedPaymentCardDetails?.number ?? '',
    );
    cardHolderNumberController = TextEditingController(
      text: cachedPaymentCardDetails?.holderNumber.toString() ?? '',
    );
    expiryDateController = TextEditingController(
      text: DateFormat('MM/yyyy').format(DateTime.now()),
    );
    cvvController = TextEditingController(
      text: cachedPaymentCardDetails?.cvv ?? '',
    );
    cardHolderNumberFocusNode = FocusNode();
    expiryDateFocusNode = FocusNode();
    cvvFocusNode = FocusNode();
    emit(state.copyWith(
      status: PaymentStateStatus.retrievedCachedPaymentCardDetails,
      paymentCardDetails: cachedPaymentCardDetails,
      checkboxValue: cachedPaymentCardDetails != null,
    ));
  }

  PaymentCardDetails? get paymentCardDetails => state.paymentCardDetails;

  void _pay({
    required int orderId,
    required double amount,
  }) async {
    emit(state.copyWith(status: PaymentStateStatus.payLoading));
    final payParams = PaymentCardDetails(
      cardType: state.selectedCardType,
      holderNumber: int.parse(cardHolderNumberController.text),
      number: cardNumberController.text.trim(),
      cvv: cvvController.text,
      amount: amount.toString(),
      expYear: DateTime.now().year.toString(),
      expMonth: DateTime.now().month.toString(),
    );
    final result = await _paymentRepo.pay(
      orderId: orderId,
      paymentCardDetails: payParams,
      cancelToken: _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: PaymentStateStatus.paySuccess,
        paymentCardDetails: payParams,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: PaymentStateStatus.payError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void payAndValidateForm({
    required int orderId,
    required double amount,
  }) {
    if (formKey.currentState!.validate()) {
      _pay(orderId: orderId, amount: amount);
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

  bool get checkboxValue => state.checkboxValue;
  void toggleCheckBox(bool? value) {
    if (state.checkboxValue != value) {
      emit(state.copyWith(
        status: PaymentStateStatus.toggleCheckBox,
        checkboxValue: value ?? false,
      ));
    }
  }

  CardType get selectedCardType => state.selectedCardType!;
  void selectCardType(CardType cardType) {
    if (state.selectedCardType != cardType) {
      emit(state.copyWith(
        status: PaymentStateStatus.updateSelectedCardType,
        selectedCardType: cardType,
      ));
    }
  }

  void _disposeFormAttributes() {
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
