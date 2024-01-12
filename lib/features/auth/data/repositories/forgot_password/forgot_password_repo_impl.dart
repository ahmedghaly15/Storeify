import 'package:dartz/dartz.dart';
import 'package:store_ify/core/api/dio_consumer.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/network/network_info.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/repositories/forgot_password/forgot_password_repo.dart';

class ForgotPasswordRepoImpl implements ForgotPasswordRepo {
  final DioConsumer dioConsumer;
  final NetworkInfo networkInfo;

  const ForgotPasswordRepoImpl({
    required this.networkInfo,
    required this.dioConsumer,
  });

  @override
  Future<Either<Failure, dynamic>> forgotPassword({
    required String email,
  }) {
    return executeAndHandleErrors<dynamic>(
      function: () async => await dioConsumer.patch(
        EndPoints.forgetPassword,
        data: {
          "email": email,
        },
      ),
    );
  }
}
