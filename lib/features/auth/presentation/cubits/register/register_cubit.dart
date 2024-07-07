import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';
import 'package:store_ify/features/auth/data/repos/register_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial()) {
    _initFormAttributes();
  }

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
    emit(const RegisterState.loading());
    final result = await _registerRepo.register(
      RegisterParams(
        username: usernameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text,
        passwordConfirmation: confirmController.text,
      ),
    );
    result.when(
      success: (data) => emit(RegisterState.success(data)),
      error: (error) =>
          emit(RegisterState.error(error.apiErrorModel.error ?? '')),
    );
  }

  void register(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.unfocusKeyboard();
      _register();
    }
  }

  bool isPasswordVisible = false;
  void invertPasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(RegisterState.invertPasswordVisibility(isPasswordVisible));
  }

  bool isConfirmPassVisible = false;
  void invertConfirmPasswordVisibility() {
    isConfirmPassVisible = !isConfirmPassVisible;
    emit(RegisterState.invertPasswordVisibility(isConfirmPassVisible));
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    return super.close();
  }
}
