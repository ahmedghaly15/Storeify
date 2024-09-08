import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/models/checkout_response.dart';

abstract class CheckoutRepo {
  Future<ApiResult<CheckoutResponse>> checkout(
    CheckoutParams params, [
    CancelToken? cancelToken,
  ]);
}

class CheckoutRepoImpl implements CheckoutRepo {
  final ApiService _apiService;

  CheckoutRepoImpl(this._apiService);

  @override
  Future<ApiResult<CheckoutResponse>> checkout(
    CheckoutParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<CheckoutResponse>(
      () async => await _apiService.checkout(
        params,
        cancelToken,
      ),
    );
  }
}
