import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/features/profile/data/models/change_password_params.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCubit(
    this._profileRepo,
  ) : super(const ProfileState.initial()) {
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

  void logout() async {
    emit(const ProfileState.logoutLoading());
    final result = await _profileRepo.logout();
    result.when(
      success: (_) async {
        await _removeCachedUser();
        emit(const ProfileState.logoutSuccess());
      },
      error: (error) => emit(ProfileState.logoutError(error.error ?? '')),
    );
  }

  Future<void> _removeCachedUser() async {
    await SharedPrefHelper.removeSecuredData(SharedPrefKeys.storeifyUser);
  }

  void changePassword() async {
    emit(const ProfileState.changePasswordLoading());
    final params = ChangePasswordParams(
      currentPassword: passController.text,
      password: newPassController.text,
      passwordConfirmation: confirmPassController.text,
    );
    final result = await _profileRepo.changePassword(params, _cancelToken);
    result.when(
      success: (_) => emit(const ProfileState.changePasswordSuccess()),
      error: (error) =>
          emit(ProfileState.changePasswordError(error.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _disposeFormControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
