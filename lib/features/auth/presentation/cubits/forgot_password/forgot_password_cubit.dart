import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/features/auth/data/repos/auth_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final AuthRepo _authRepo;

  ForgotPasswordCubit(
    this._authRepo,
  ) : super(const ForgotPasswordState.initial()) {
    _initFormAttributes();
  }

  final _cancelToken = CancelToken();
  late final TextEditingController emailController;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
  }

  void forgotPassword(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.unfocusKeyboard();
      _forgotPassword();
    }
  }

  void _forgotPassword() async {
    emit(const ForgotPasswordState.loading());
    final result = await _authRepo.forgotPassword(emailController.text.trim());
    result.when(
      success: (_) => emit(const ForgotPasswordState.success()),
      error: (error) =>
          emit(ForgotPasswordState.error(error.apiErrorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    _cancelToken.cancel();
    return super.close();
  }
}
