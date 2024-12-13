import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';
import 'package:store_ify/features/auth/data/repos/validate_otp_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_state.dart';

class ValidateOtpCubit extends Cubit<ValidateOtpState> {
  ValidateOtpCubit(this._validateOtpRepo)
      : super(const ValidateOtpState.initial()) {
    otpController = TextEditingController();
  }

  final ValidateOtpRepo _validateOtpRepo;
  final CancelToken _cancelToken = CancelToken();

  late final TextEditingController otpController;

  void validateOtp(String email) async {
    emit(const ValidateOtpState.validateOtpLoading());
    final result = await _validateOtpRepo.validateOtp(
      ValidateOtpParams(
        email: email,
        otp: otpController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const ValidateOtpState.validateOtpSuccess()),
      error: (errorModel) =>
          emit(ValidateOtpState.validateOtpError(errorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    otpController.dispose();
    return super.close();
  }
}
