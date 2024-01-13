import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_ify/core/api/dio_consumer.dart';
import 'package:store_ify/core/errors/server_failure.dart';
import 'package:store_ify/core/network/network_info.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/auth/data/entities/login_params.dart';
import 'package:store_ify/features/auth/data/models/user.dart';
import 'package:store_ify/features/auth/data/repositories/login/login_repo.dart';
import 'package:store_ify/core/api/end_point.dart';
import 'package:store_ify/core/errors/failures.dart';

class LoginRepoImpl implements LoginRepo {
  final DioConsumer dioConsumer;
  final NetworkInfo networkInfo;

  const LoginRepoImpl({required this.networkInfo, required this.dioConsumer});

  @override
  Future<Either<Failure, User>> userLogin({
    required LoginParams loginParams,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await dioConsumer.post(
          EndPoints.login,
          data: {
            "email": loginParams.email,
            "password": loginParams.password,
          },
        );

        final User user = User.fromJson(response['data']);

        return Right(user);
      } catch (e) {
        if (e is DioException) {
          return Left(ServerFailure.fromDioException(e));
        }
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return const Left(ServerFailure(AppStrings.noInternet));
    }
  }
}
