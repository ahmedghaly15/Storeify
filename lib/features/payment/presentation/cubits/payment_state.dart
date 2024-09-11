import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState<T> with _$PaymentState<T> {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.payLoading() = PayLoading;
  const factory PaymentState.paySuccess() = PaySuccess;
  const factory PaymentState.payError(String error) = PayError<T>;
  const factory PaymentState.updateSelectedCardType(CardType cardType) =
      UpdateSelectedCardType<T>;
  const factory PaymentState.alwaysAutoValidateMode(AutovalidateMode mode) =
      AlwaysAutoValidateMode<T>;
  const factory PaymentState.toggleCheckBox(bool? value) = ToggleCheckBox<T>;
}
