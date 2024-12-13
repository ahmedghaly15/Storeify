import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';
import 'package:store_ify/features/payment/data/models/payment_card_details.dart';

part 'payment_state.freezed.dart';

enum PaymentStateStatus {
  initial,
  updateSelectedCardType,
  alwaysAutoValidateMode,
  toggleCheckBox,
  payLoading,
  paySuccess,
  payError,
  retrieveCachedPaymentCardDetails,
  retrievedCachedPaymentCardDetails,
}

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required PaymentStateStatus status,
    CardType? selectedCardType,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    @Default(false) bool checkboxValue,
    String? error,
    PaymentCardDetails? paymentCardDetails,
  }) = _PaymentState;

  factory PaymentState.initial() => PaymentState(
        status: PaymentStateStatus.initial,
        selectedCardType: AppConstants.cardTypes[0],
      );
}
