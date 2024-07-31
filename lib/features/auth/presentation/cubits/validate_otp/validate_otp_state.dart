import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_otp_state.freezed.dart';

@freezed
class ValidateOtpState<T> with _$ValidateOtpState<T> {
  const factory ValidateOtpState.initial() = _Initial;
  const factory ValidateOtpState.loading() = Loading;
  const factory ValidateOtpState.success() = Success;
  const factory ValidateOtpState.error(String error) = Error<T>;
}
