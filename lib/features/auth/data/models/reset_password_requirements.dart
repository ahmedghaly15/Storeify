import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_requirements.freezed.dart';

@freezed
class ResetPasswordRequirements with _$ResetPasswordRequirements {
  const factory ResetPasswordRequirements({
    required String email,
    required BuildContext context,
  }) = _ResetPasswordRequirements;
}
