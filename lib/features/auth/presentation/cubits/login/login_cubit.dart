import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/api/dio_factory.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/repos/auth_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit(this._authRepo) : super(const LoginState.initial()) {
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
    emit(const LoginState.loading());
    final result = await _authRepo.login(
      LoginParams(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (user) async {
        await _saveUserToken(user.token);
        emit(LoginState.success(user));
      },
      error: (errorModel) => emit(LoginState.error(errorModel.error ?? '')),
    );
  }

  Future<void> _saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeadersAfterLogin(token);
  }

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.unfocusKeyboard();
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
