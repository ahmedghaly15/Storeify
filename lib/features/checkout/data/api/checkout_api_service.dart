import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/models/checkout_response.dart';
import 'package:store_ify/features/checkout/data/models/choose_payment_method_params.dart';

part 'checkout_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class CheckoutApiService {
  factory CheckoutApiService(Dio dio, {String baseUrl}) = _CheckoutApiService;

  @POST(EndPoints.checkout)
  Future<CheckoutResponse> checkout(
    @Body() CheckoutParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST('${EndPoints.checkout}/{payment_id}/payment-method')
  Future<void> choosePaymentMethod(
    @Path('payment_id') int paymentId,
    @Body() ChoosePaymentMethodParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
