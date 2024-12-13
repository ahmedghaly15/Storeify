import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/forgot_password_params.dart';
import 'package:store_ify/features/auth/data/repos/forgot_password_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepo _forgotPasswordRepo;

  ForgotPasswordCubit(
    this._forgotPasswordRepo,
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

  void forgotPassword() {
    if (formKey.currentState!.validate()) {
      _forgotPassword();
    }
  }

  void _forgotPassword() async {
    emit(const ForgotPasswordState.forgotPasswordLoading());
    final result = await _forgotPasswordRepo.forgotPassword(
      ForgotPasswordParams(email: emailController.text.trim()),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const ForgotPasswordState.forgotPasswordSuccess()),
      error: (errorModel) =>
          emit(ForgotPasswordState.forgotPasswordError(errorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    _cancelToken.cancel();
    return super.close();
  }
}
