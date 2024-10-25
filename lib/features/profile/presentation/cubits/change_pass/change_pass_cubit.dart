import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/profile/data/models/change_password_params.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_state.dart';

class ChangePassCubit extends Cubit<ChangePassState> {
  final ProfileRepo _profileRepo;

  ChangePassCubit(
    this._profileRepo,
  ) : super(const ChangePassState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();

  late final GlobalKey<FormState> formKey;
  late final TextEditingController passController;
  late final TextEditingController newPassController;
  late final TextEditingController confirmPassController;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    _initFormControllers();
  }

  void _initFormControllers() {
    passController = TextEditingController();
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  void _disposeFormControllers() {
    passController.dispose();
    newPassController.dispose();
    confirmPassController.dispose();
  }

  void _changePassword() async {
    emit(const ChangePassState.changePasswordLoading());
    final params = ChangePasswordParams(
      currentPassword: passController.text,
      password: newPassController.text,
      passwordConfirmation: confirmPassController.text,
    );
    final result = await _profileRepo.changePassword(params, _cancelToken);
    result.when(
      success: (_) => emit(const ChangePassState.changePasswordSuccess()),
      error: (error) =>
          emit(ChangePassState.changePasswordError(error.error ?? '')),
    );
  }

  void validateAndChangePass() {
    if (formKey.currentState!.validate()) {
      _changePassword();
    }
  }

  bool oldPasswordObscured = true;
  void toggleOldPasswordVisibility() {
    oldPasswordObscured = !oldPasswordObscured;
    emit(ChangePassState.toggleOldPassVisibility(oldPasswordObscured));
  }

  bool newPasswordObscured = true;
  void toggleNewPassVisibility() {
    newPasswordObscured = !newPasswordObscured;
    emit(ChangePassState.toggleNewPassVisibility(newPasswordObscured));
  }

  bool confirmNewPassObscured = true;
  void toggleConfirmPassVisibility() {
    confirmNewPassObscured = !confirmNewPassObscured;
    emit(
        ChangePassState.toggleConfirmNewPassVisibility(confirmNewPassObscured));
  }

  @override
  Future<void> close() {
    _disposeFormControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
