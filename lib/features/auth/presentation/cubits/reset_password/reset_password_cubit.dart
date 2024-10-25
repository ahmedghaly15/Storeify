import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';
import 'package:store_ify/features/auth/data/models/reset_password_requirements.dart';
import 'package:store_ify/features/auth/data/repos/reset_password_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(
    this._resetPasswordRepo,
  ) : super(const ResetPasswordState.initial()) {
    _initFormAttributes();
  }

  final ResetPasswordRepo _resetPasswordRepo;
  final CancelToken _cancelToken = CancelToken();

  late final TextEditingController passController;
  late final TextEditingController confirmPassController;
  late final FocusNode passFocusNode;
  late final FocusNode confirmPassFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    _initControllers();
    _initFocusNodes();
    formKey = GlobalKey<FormState>();
  }

  void _initControllers() {
    passController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  void _initFocusNodes() {
    passFocusNode = FocusNode();
    confirmPassFocusNode = FocusNode();
  }

  void _disposeFormAttributes() {
    _disposeControllers();
    _disposeFocusNodes();
  }

  void _disposeFocusNodes() {
    passFocusNode.dispose();
    confirmPassFocusNode.dispose();
  }

  void _disposeControllers() {
    passController.dispose();
    confirmPassController.dispose();
  }

  void _resetPassword(String email) async {
    emit(const ResetPasswordState.loading());
    final result = await _resetPasswordRepo.resetPassword(
      ResetPasswordParams(
        email: email,
        password: passController.text,
        passwordConfirmation: confirmPassController.text,
      ),
      _cancelToken,
    );

    result.when(
      success: (_) => emit(const ResetPasswordState.success()),
      error: (errorModel) =>
          emit(ResetPasswordState.error(errorModel.error ?? '')),
    );
  }

  void resetPassword(ResetPasswordRequirements requirements) {
    if (formKey.currentState!.validate()) {
      requirements.context.unfocusKeyboard();
      _resetPassword(requirements.email);
    }
  }

  bool newPassObscured = true;
  void invertNewPassVisibility() {
    newPassObscured = !newPassObscured;
    emit(ResetPasswordState.invertPasswordVisibility(newPassObscured));
  }

  bool confirmPassObscured = true;
  void invertConfirmPassVisibility() {
    confirmPassObscured = !confirmPassObscured;
    emit(ResetPasswordState.invertPasswordVisibility(confirmPassObscured));
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    _cancelToken.cancel();
    return super.close();
  }
}
