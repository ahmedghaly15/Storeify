import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.logoutLoading() = LogoutLoading;
  const factory ProfileState.logoutSuccess() = LogoutSuccess;
  const factory ProfileState.logoutError(String error) = LogoutError<T>;
  const factory ProfileState.changePasswordLoading() = ChangePasswordLoading;
  const factory ProfileState.changePasswordSuccess() = ChangePasswordSuccess;
  const factory ProfileState.changePasswordError(String error) =
      ChangePasswordError<T>;
}
