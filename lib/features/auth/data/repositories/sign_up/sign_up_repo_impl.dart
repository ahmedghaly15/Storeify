import 'package:dartz/dartz.dart';
import 'package:store_ify/core/api/api_consumer.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/auth/data/entities/sign_up_params.dart';
import 'package:store_ify/core/models/user.dart';
import 'package:store_ify/features/auth/data/repositories/sign_up/sign_up_repo.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';

class SingUpRepoImpl implements SignUpRepo {
  final ApiConsumer apiConsumer;

  const SingUpRepoImpl({required this.apiConsumer});

  @override
  Future<Either<Failure, User>> userSingUp({
    required SignUpParams signUpParams,
  }) {
    return executeAndHandleErrors<User>(
      function: () async {
        final response = await apiConsumer.post(
          EndPoints.register,
          data: {
            "userName": signUpParams.userName,
            "email": signUpParams.email,
            "password": signUpParams.password,
            "confirmPassword": signUpParams.confirmPassword
          },
        );

        final User user = User.fromJson(response['data']);

        return user;
      },
    );
  }
}
