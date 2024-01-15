import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/auth/data/entities/verification_params.dart';
import 'package:store_ify/features/auth/data/repositories/verification/verification_repo.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit({required this.verificationRepo})
      : super((const VerificationInitial()));

  final VerificationRepo verificationRepo;

  void otpVerification({required VerificationParams verificationParams}) {
    emit(const VerificationLoading());

    verificationRepo
        .otpVerification(verificationParams: verificationParams)
        .then(
      (value) {
        value.fold((failure) {
          emit(VerificationError(errorMessage: failure.errMessage.toString()));
        }, (verify) {
          emit(VerificationSuccess(message: verify.toString()));
        });
      },
    );
  }
}
