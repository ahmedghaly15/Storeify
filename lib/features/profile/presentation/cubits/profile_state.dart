import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.logoutLoading() = LogoutLoading;
  const factory ProfileState.logoutSuccess() = LogoutSuccess;
  const factory ProfileState.logoutError(String error) = LogoutError<T>;
  const factory ProfileState.deleteAccountLoading() = DeleteAccountLoading;
  const factory ProfileState.deleteAccountSuccess() = DeleteAccountSuccess;
  const factory ProfileState.deleteAccountError(String error) =
      DeleteAccountError<T>;
}
