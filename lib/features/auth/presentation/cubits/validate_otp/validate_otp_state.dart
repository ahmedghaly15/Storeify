import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_otp_state.freezed.dart';

@freezed
class ValidateOtpState<T> with _$ValidateOtpState<T> {
  const factory ValidateOtpState.initial() = _Initial;
  const factory ValidateOtpState.validateOtpLoading() = ValidateOtpLoading;
  const factory ValidateOtpState.validateOtpSuccess() = ValidateOtpSuccess;
  const factory ValidateOtpState.validateOtpError(String error) =
      ValidateOtpError<T>;
}
