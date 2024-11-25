import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/utils/app_strings.dart';

part 'profile_state.freezed.dart';

enum ProfileStateStatus {
  initial,
  logoutLoading,
  logoutSuccess,
  logoutError,
  deleteAccountLoading,
  deleteAccountSuccess,
  deleteAccountError,
  changeLocaleLocally,
  changeApiLangSuccess,
  changeApiLangError,
}

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    required ProfileStateStatus status,
    @Default(AppStrings.englishLangCode) String langCode,
    String? error,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        status: ProfileStateStatus.initial,
      );
}
