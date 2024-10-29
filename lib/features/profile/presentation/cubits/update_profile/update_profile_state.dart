import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/models/storeify_user.dart';

part 'update_profile_state.freezed.dart';

enum UpdateProfileStateStatus {
  initial,
  updateProfileLoading,
  updateProfileSuccess,
  updateProfileError,
  updateSelectedImg,
}

@freezed
class UpdateProfileState<T> with _$UpdateProfileState<T> {
  const factory UpdateProfileState({
    required UpdateProfileStateStatus status,
    UserData? updatedUserData,
    File? selectedImg,
    String? error,
  }) = _UpdateProfileState;

  factory UpdateProfileState.initial() => const UpdateProfileState(
        status: UpdateProfileStateStatus.initial,
      );
}
