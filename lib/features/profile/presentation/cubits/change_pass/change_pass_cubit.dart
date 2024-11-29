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
  ) : super(ChangePassState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();

  late final GlobalKey<FormState> formKey;
  late final TextEditingController passController;
  late final TextEditingController newPassController;
  late final TextEditingController confirmPassController;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
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
    emit(state.copyWith(status: ChangePassStateStatus.changePasswordLoading));
    final result = await _profileRepo.changePassword(
      ChangePasswordParams(
        currentPassword: passController.text,
        password: newPassController.text,
        passwordConfirmation: confirmPassController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: ChangePassStateStatus.changePasswordSuccess,
      )),
      error: (errorModel) => emit(state.copyWith(
        status: ChangePassStateStatus.changePasswordError,
        error: errorModel.error ?? '',
      )),
    );
  }

  void validateAndChangePass() {
    if (formKey.currentState!.validate()) {
      _changePassword();
    }
  }

  void toggleOldPasswordVisibility() {
    emit(state.copyWith(
      status: ChangePassStateStatus.toggleOldPassVisibility,
      oldPasswordObscured: !state.oldPasswordObscured,
    ));
  }

  void toggleNewPassVisibility() {
    emit(state.copyWith(
      status: ChangePassStateStatus.toggleNewPassVisibility,
      newPasswordObscured: !state.newPasswordObscured,
    ));
  }

  void toggleConfirmPassVisibility() {
    emit(state.copyWith(
      status: ChangePassStateStatus.toggleConfirmNewPassVisibility,
      confirmNewPassObscured: !state.confirmNewPassObscured,
    ));
  }

  @override
  Future<void> close() {
    _disposeFormControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
