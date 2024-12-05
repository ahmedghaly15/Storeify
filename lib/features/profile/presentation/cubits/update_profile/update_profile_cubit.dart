import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/profile/data/models/update_profile_params.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final ProfileRepo _profileRepo;

  UpdateProfileCubit(
    this._profileRepo,
  ) : super(UpdateProfileState.initial());

  final CancelToken _cancelToken = CancelToken();

  Future<XFile?> _pickAndCompressImg() async {
    final pickedImg =
        await getIt.get<ImagePicker>().pickImage(source: ImageSource.gallery);
    if (pickedImg != null) {
      final compressedImg = await FlutterImageCompress.compressAndGetFile(
        pickedImg.path,
        '${pickedImg.path}_compressed.jpg',
        format: CompressFormat.jpeg,
        quality: 70,
      );
      return compressedImg;
    }
    return null;
  }

  void pickProfileImg() async {
    final pickedImg = await _pickAndCompressImg();
    if (pickedImg != null) {
      emit(state.copyWith(
        status: UpdateProfileStateStatus.updateSelectedImg,
        selectedImg: File(pickedImg.path),
      ));
    }
  }

  void onChangeEmail(String? text) {
    emit(state.copyWith(
      status: UpdateProfileStateStatus.onChangeEmail,
      email: text ?? '',
    ));
  }

  void onChangeUsername(String? text) {
    emit(state.copyWith(
      status: UpdateProfileStateStatus.onChangeUsername,
      username: text ?? '',
    ));
  }

  void updateProfile() async {
    emit(state.copyWith(
      status: UpdateProfileStateStatus.updateProfileLoading,
    ));
    final result = await _profileRepo.updateProfile(
      UpdateProfileParams(
        username: state.username.isEmpty
            ? currentUser!.user.username
            : state.username,
        email: state.email.isEmpty ? currentUser!.user.email : state.email,
        img: state.selectedImg,
      ),
      _cancelToken,
    );
    result.when(
      success: (user) {
        emit(state.copyWith(
          status: UpdateProfileStateStatus.updateProfileSuccess,
          updatedUser: currentUser?.copyWith(
            user: user.user,
          ),
        ));
      },
      error: (error) => emit(state.copyWith(
        status: UpdateProfileStateStatus.updateProfileError,
        error: error.error,
      )),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
