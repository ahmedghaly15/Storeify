import 'package:dio/dio.dart';
import 'package:store_ify/core/api/status_code.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/utils/app_strings.dart';

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Your request not found, please try again later!');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(AppStrings.noInternet);
      case DioExceptionType.unknown:
        return ServerFailure("Unexpected Error, please try again!");
      default:
        return ServerFailure(AppStrings.opps);
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == StatusCodes.internalServerError) {
      return ServerFailure(AppStrings.opps);
    }

    if (statusCode == StatusCodes.badRequest) {
      return ServerFailure(response['message']);
    }

    return ServerFailure(response['messageError']);
  }
}
