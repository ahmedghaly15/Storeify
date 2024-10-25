import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/payment/data/models/pay_params.dart';

part 'payment_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class PaymentApiService {
  factory PaymentApiService(Dio dio, {String baseUrl}) = _PaymentApiService;

  @POST('${EndPoints.pay}{orderId}')
  Future<void> orderPay(
    @Path('orderId') int orderId,
    @Body() PayParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
