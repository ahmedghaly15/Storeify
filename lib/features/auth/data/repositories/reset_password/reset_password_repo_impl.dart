import 'package:dartz/dartz.dart';
import 'package:store_ify/core/api/dio_consumer.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/network/network_info.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/entities/reset_password_params.dart';
import 'package:store_ify/features/auth/data/repositories/reset_password/reset_password_repo.dart';

class ResetPasswordRepoImpl implements ResetPasswordRepo {
  final DioConsumer dioConsumer;
  final NetworkInfo networkInfo;

  const ResetPasswordRepoImpl({
    required this.networkInfo,
    required this.dioConsumer,
  });

  @override
  Future<Either<Failure, dynamic>> resetPassword({
    required ResetPasswordParams resetPasswordParams,
  }) {
    return executeAndHandleErrors<dynamic>(
      function: () async => await dioConsumer.patch(
        EndPoints.resetPassword,
        data: {
          "email": resetPasswordParams.email,
          "password": resetPasswordParams.password,
          "confirmPassword": resetPasswordParams.confirmPassword
        },
      ),
    );
  }
}
