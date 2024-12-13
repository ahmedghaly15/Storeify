import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/core/utils/functions/execute_and_handle_errors.dart';
import 'package:store_ify/features/payment/data/api/payment_api_service.dart';
import 'package:store_ify/features/payment/data/models/payment_card_details.dart';

class PaymentRepo {
  final PaymentApiService _paymentApiService;

  const PaymentRepo(this._paymentApiService);

  Future<ApiResult<void>> pay({
    required int orderId,
    required PaymentCardDetails paymentCardDetails,
    CancelToken? cancelToken,
  }) {
    return executeAndHandleErrors<void>(
      () async => await _paymentApiService.orderPay(
        orderId,
        paymentCardDetails,
        cancelToken,
      ),
    );
  }
}
