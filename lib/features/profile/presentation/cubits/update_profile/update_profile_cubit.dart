import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/profile/data/models/update_profile_params.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final ProfileRepo _profileRepo;

  UpdateProfileCubit(
    this._profileRepo,
  ) : super(UpdateProfileState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();
  late final GlobalKey<FormState> formKey;
  late final TextEditingController usernameController;
  late final TextEditingController emailController;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    _initControllers();
  }

  void _initControllers() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
  }

  void updateSelectedImg(File img) {
    emit(state.copyWith(
      status: UpdateProfileStateStatus.updateSelectedImg,
      selectedImg: img,
    ));
  }

  void _updateProfile() async {
    emit(state.copyWith(
      status: UpdateProfileStateStatus.updateProfileLoading,
    ));
    final params = UpdateProfileParams(
      username: usernameController.text,
      email: emailController.text,
      img: state.selectedImg!,
    );
    final result = await _profileRepo.updateProfile(params, _cancelToken);
    result.when(
      success: (userData) {
        currentUser = currentUser?.copyWith(
          user: userData,
        );
        emit(state.copyWith(
          status: UpdateProfileStateStatus.updateProfileSuccess,
          updatedUserData: userData,
        ));
      },
      error: (error) => emit(state.copyWith(
        status: UpdateProfileStateStatus.updateProfileError,
        error: error.error,
      )),
    );
  }

  void validateFormAndUpdateProfile() {
    if (formKey.currentState!.validate()) {
      _updateProfile();
    }
  }

  void _disposeControllers() {
    usernameController.dispose();
    emailController.dispose();
  }

  @override
  Future<void> close() {
    _disposeControllers();
    _cancelToken.cancel();
    return super.close();
  }
}
