import 'package:json_annotation/json_annotation.dart';

part 'validate_otp_params.g.dart';

@JsonSerializable()
class ValidateOtpParams {
  final String otp, email;

  const ValidateOtpParams({required this.otp, required this.email});

  factory ValidateOtpParams.fromJson(Map<String, dynamic> json) =>
      _$ValidateOtpParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ValidateOtpParamsToJson(this);
}
