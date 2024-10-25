import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';
import 'package:store_ify/features/auth/data/repos/register_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial()) {
    _initFormAttributes();
  }

  final _cancelToken = CancelToken();
  late final TextEditingController emailController;
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmController;
  late final FocusNode emailFocusNode;
  late final FocusNode usernameFocusNode;
  late final FocusNode passwordFocusNode;
  late final FocusNode confirmPasswordFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    confirmController = TextEditingController();
    emailFocusNode = FocusNode();
    usernameFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
  }

  void _disposeFormAttributes() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    emailFocusNode.dispose();
    usernameFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  void _register() async {
    emit(const RegisterState.registerLoading());
    final registerParams = RegisterParams(
      username: usernameController.text.trim(),
      email: emailController.text.trim(),
      password: passwordController.text,
      passwordConfirmation: confirmController.text,
    );
    final result = await _registerRepo.register(registerParams, _cancelToken);
    result.when(
      success: (user) => emit(RegisterState.registerSuccess(user)),
      error: (errorModel) =>
          emit(RegisterState.registerError(errorModel.error ?? '')),
    );
  }

  void register() {
    if (formKey.currentState!.validate()) {
      _register();
    }
  }

  bool isPassObscured = true;
  void togglePassVisibility() {
    isPassObscured = !isPassObscured;
    emit(RegisterState.togglePassVisibility(isPassObscured));
  }

  bool isConfirmPassObscured = true;
  void toggleConfirmPassVisibility() {
    isConfirmPassObscured = !isConfirmPassObscured;
    emit(RegisterState.toggleConfirmPassVisibility(isConfirmPassObscured));
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    _cancelToken.cancel();
    return super.close();
  }
}
