import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/checkout/data/api/checkout_api_service.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/models/checkout_response.dart';
import 'package:store_ify/features/checkout/data/models/choose_payment_method_params.dart';

class CheckoutRepo {
  final CheckoutApiService _checkoutApiService;

  CheckoutRepo(this._checkoutApiService);

  Future<ApiResult<CheckoutResponse>> checkout(
    CheckoutParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<CheckoutResponse>(
      () async => await _checkoutApiService.checkout(
        params,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<void>> choosePaymentMethod(
    ChoosePaymentMethodParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _checkoutApiService.choosePaymentMethod(
        params.paymentId,
        params,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<String>> fetchCityDataUsingPosition(
    Position position, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<String>(() async {
      final cityData = await _checkoutApiService.fetchCityDataUsingPosition(
        lat: position.latitude,
        lon: position.longitude,
        cancelToken: cancelToken,
      );
      return cityData.displayName;
    });
  }
}
