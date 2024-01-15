import 'package:dartz/dartz.dart';
import 'package:store_ify/core/api/api_consumer.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/entities/login_params.dart';
import 'package:store_ify/core/models/user.dart';
import 'package:store_ify/features/auth/data/repositories/login/login_repo.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';

class LoginRepoImpl implements LoginRepo {
  final ApiConsumer apiConsumer;

  const LoginRepoImpl({required this.apiConsumer});

  @override
  Future<Either<Failure, User>> userLogin({
    required LoginParams loginParams,
  }) {
    return executeAndHandleErrors<User>(
      function: () async {
        final response = await apiConsumer.post(
          EndPoints.login,
          data: {
            "email": loginParams.email,
            "password": loginParams.password,
          },
        );

        final User user = User.fromJson(response['data']);

        return user;
      },
    );
  }
}
