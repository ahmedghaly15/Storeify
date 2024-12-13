import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/repos/login_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(LoginState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  void _disposeFormAttributes() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  void _login() async {
    emit(state.copyWith(
      status: LoginStateStatus.loginLoading,
    ));
    final result = await _loginRepo.login(
      LoginParams(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (user) => emit(state.copyWith(
        status: LoginStateStatus.loginSuccess,
        user: user,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: LoginStateStatus.loginError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void login() {
    if (formKey.currentState!.validate()) {
      _login();
    }
  }

  void togglePassVisibility() {
    emit(state.copyWith(
      status: LoginStateStatus.togglePassVisibility,
      isPasswordObscure: !state.isPasswordObscure,
    ));
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    _cancelToken.cancel();
    return super.close();
  }
}
