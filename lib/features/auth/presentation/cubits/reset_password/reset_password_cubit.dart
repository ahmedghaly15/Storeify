import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';
import 'package:store_ify/features/auth/data/models/reset_password_requirements.dart';
import 'package:store_ify/features/auth/data/repos/auth_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._authRepo)
      : super(const ResetPasswordState.initial()) {
    _initFormAttributes();
  }

  final AuthRepo _authRepo;
  final CancelToken _cancelToken = CancelToken();

  late final TextEditingController passController;
  late final TextEditingController confirmPassController;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    passController = TextEditingController();
    confirmPassController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  void _disposeControllers() {
    passController.dispose();
    confirmPassController.dispose();
  }

  void _resetPassword(String email) async {
    emit(const ResetPasswordState.loading());
    final result = await _authRepo.resetPassword(
      ResetPasswordParams(
        email: email,
        password: passController.text,
        passwordConfirmation: confirmPassController.text,
      ),
      _cancelToken,
    );

    result.when(
      success: (_) => emit(const ResetPasswordState.success()),
      error: (error) =>
          emit(ResetPasswordState.error(error.apiErrorModel.error ?? '')),
    );
  }

  void resetPassword(ResetPasswordRequirements requirements) {
    if (formKey.currentState!.validate()) {
      requirements.context.unfocusKeyboard();
      _resetPassword(requirements.email);
    }
  }

  @override
  Future<void> close() {
    _disposeControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
