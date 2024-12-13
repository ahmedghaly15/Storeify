import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';
import 'package:store_ify/features/auth/data/repos/reset_password_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepo _resetPasswordRepo;

  ResetPasswordCubit(
    this._resetPasswordRepo,
  ) : super(ResetPasswordState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();
  late final TextEditingController passController;
  late final TextEditingController confirmPassController;
  late final FocusNode confirmPassFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    passController = TextEditingController();
    confirmPassController = TextEditingController();
    confirmPassFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
  }

  void _disposeFormAttributes() {
    confirmPassFocusNode.dispose();
    passController.dispose();
    confirmPassController.dispose();
  }

  void _resetPassword(String email) async {
    emit(state.copyWith(
      status: ResetPassStateStatus.resetPassLoading,
    ));
    final result = await _resetPasswordRepo.resetPassword(
      ResetPasswordParams(
        email: email,
        password: passController.text,
        passwordConfirmation: confirmPassController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: ResetPassStateStatus.resetPassSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: ResetPassStateStatus.resetPassError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void resetPassword(String email) {
    if (formKey.currentState!.validate()) {
      _resetPassword(email);
    }
  }

  void togglePassVisibility() {
    emit(state.copyWith(
      status: ResetPassStateStatus.togglePassVisibility,
      isPassObscure: !state.isPassObscure,
    ));
  }

  void toggleConfirmPassVisibility() {
    emit(state.copyWith(
      status: ResetPassStateStatus.toggleConfirmPassVisibility,
      isConfirmPassObscure: !state.isConfirmPassObscure,
    ));
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    _cancelToken.cancel();
    return super.close();
  }
}
