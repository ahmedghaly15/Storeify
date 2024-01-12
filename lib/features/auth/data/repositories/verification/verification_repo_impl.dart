import 'package:dartz/dartz.dart';
import 'package:store_ify/core/api/dio_consumer.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/entities/verification_params.dart';
import 'package:store_ify/features/auth/data/repositories/verification/verification_repo.dart';

class VerificationRepoImpl implements VerificationRepo {
  final DioConsumer dioConsumer;

  const VerificationRepoImpl({
    required this.dioConsumer,
  });

  @override
  Future<Either<Failure, dynamic>> otpVerification({
    required VerificationParams verificationParams,
  }) {
    return executeAndHandleErrors<dynamic>(
      function: () async => await dioConsumer.post(
        EndPoints.verifyCode,
        data: {
          "email": verificationParams.email,
          "forgetCode": verificationParams.forgetCode,
        },
      ),
    );
  }
}
