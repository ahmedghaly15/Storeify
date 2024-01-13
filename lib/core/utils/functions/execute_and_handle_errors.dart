import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/errors/server_failure.dart';
import 'package:store_ify/core/network/network_info.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/service_locator.dart';

Future<Either<Failure, T>> executeAndHandleErrors<T>({
  required Future<T> Function() function,
}) async {
  if (await getIt.get<NetworkInfo>().isConnected) {
    try {
      final result = await function();
      return Right(result);
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
