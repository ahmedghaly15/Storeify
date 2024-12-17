import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';
import 'package:store_ify/features/auth/data/repos/register_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(RegisterState.initial()) {
    _initFormAttributes();
  }

  final _cancelToken = CancelToken();
  late final TextEditingController emailController;
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmController;
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
    usernameFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
  }

  void _disposeFormAttributes() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    usernameFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  void _register() async {
    emit(state.copyWith(
      status: RegisterStateStatus.registerLoading,
    ));
    final result = await _registerRepo.register(
      RegisterParams(
        username: usernameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text,
        passwordConfirmation: confirmController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (user) => emit(state.copyWith(
        status: RegisterStateStatus.registerSuccess,
        user: user,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: RegisterStateStatus.registerError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void register() {
    if (formKey.currentState!.validate()) {
      _register();
    }
  }

  void togglePassVisibility() {
    emit(state.copyWith(
      status: RegisterStateStatus.togglePassVisibility,
      isPassObscure: !state.isPassObscure,
    ));
  }

  void toggleConfirmPassVisibility() {
    emit(state.copyWith(
      status: RegisterStateStatus.toggleConfirmPassVisibility,
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
