import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/repos/login_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial()) {
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
    emit(const LoginState.loginLoading());
    final loginParams = LoginParams(
      email: emailController.text.trim(),
      password: passwordController.text,
    );
    final result = await _loginRepo.login(loginParams, _cancelToken);
    result.when(
      success: (user) => emit(LoginState.loginSuccess(user)),
      error: (errorModel) =>
          emit(LoginState.loginError(errorModel.error ?? '')),
    );
  }

  void login() {
    if (formKey.currentState!.validate()) {
      _login();
    }
  }

  bool isPasswordVisible = true;
  void invertPasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(LoginState.invertPasswordVisibility(isPasswordVisible));
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    _cancelToken.cancel();
    return super.close();
  }
}
