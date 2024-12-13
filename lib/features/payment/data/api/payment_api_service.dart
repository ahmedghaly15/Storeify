import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/payment/data/models/payment_card_details.dart';

part 'payment_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class PaymentApiService {
  factory PaymentApiService(Dio dio, {String baseUrl}) = _PaymentApiService;

  @POST('${EndPoints.pay}{orderId}')
  Future<void> orderPay(
    @Path('orderId') int orderId,
    @Body() PaymentCardDetails params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
