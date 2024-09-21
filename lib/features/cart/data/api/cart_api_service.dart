import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';

part 'cart_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class CartApiService {
  factory CartApiService(Dio dio, {String baseUrl}) = _CartApiService;

  @POST('${EndPoints.addProductToCart}{productId}')
  Future<void> addProductToCart(
    @Path('productId') int productId,
    @Body() AddProductToCartParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.cart)
  Future<FetchCartResponse> fetchCart([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @DELETE('${EndPoints.cart}{product_id}')
  Future<void> removeProductFromCart(
    @Path('product_id') int productId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
