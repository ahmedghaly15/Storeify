import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/models/checkout_response.dart';
import 'package:store_ify/features/checkout/data/models/choose_payment_method_params.dart';

abstract class CheckoutRepo {
  Future<ApiResult<CheckoutResponse>> checkout(
    CheckoutParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> choosePaymentMethod(
    ChoosePaymentMethodParams params, [
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

  @override
  Future<ApiResult<void>> choosePaymentMethod(
    ChoosePaymentMethodParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.choosePaymentMethod(
        params.paymentId,
        params,
        cancelToken,
      ),
    );
  }
}
