import 'package:dartz/dartz.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/features/auth/data/entities/verification_params.dart';

abstract class VerificationRepo {
  Future<Either<Failure, dynamic>> otpVerification({
    required VerificationParams verificationParams,
  });
}
