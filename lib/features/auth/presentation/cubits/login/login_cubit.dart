import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/repos/auth_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit(this._authRepo) : super(const LoginState.initial()) {
    _initFormAttributes();
  }

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
    );
    result.when(
      success: (data) => emit(LoginState.success(data)),
      error: (error) => emit(LoginState.error(error.apiErrorModel.error ?? '')),
    );
  }

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.unfocusKeyboard();
      _login();
    }
  }

  bool isPasswordVisible = false;
  void invertPasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(LoginState.invertPasswordVisibility(isPasswordVisible));
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    return super.close();
  }
}
