import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';
import 'package:store_ify/features/auth/data/repos/auth_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_state.dart';

class ValidateOtpCubit extends Cubit<ValidateOtpState> {
  ValidateOtpCubit(this._authRepo) : super(const ValidateOtpState.initial()) {
    _initFormAttributes();
  }

  final AuthRepo _authRepo;
  final CancelToken _cancelToken = CancelToken();

  late final TextEditingController otpController;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    otpController = TextEditingController();
  }

  void validateOtp(String email) async {
    emit(const ValidateOtpState.loading());
    final result = await _authRepo.validateOtp(
      ValidateOtpParams(
        email: email,
        otp: otpController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const ValidateOtpState.success()),
      error: (error) =>
          emit(ValidateOtpState.error(error.apiErrorModel.error ?? '')),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    otpController.dispose();
    return super.close();
  }
}
