import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/payment/data/models/pay_params.dart';

abstract class PaymentRepo {
  Future<ApiResult<void>> pay(
    PayParams params, [
    CancelToken? cancelToken,
  ]);
}

class PaymentRepoImpl implements PaymentRepo {
  final ApiService _apiService;

  const PaymentRepoImpl(this._apiService);

  @override
  Future<ApiResult<void>> pay(
    PayParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.orderPay(
        params.orderId,
        params,
        cancelToken,
      ),
    );
  }
}
