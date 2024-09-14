import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';

abstract class CartRepo {
  Future<ApiResult<void>> addProductToCart(
    AddProductToCartParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<FetchCartResponse>> fetchCart([
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> removeProductFromCart(
    int productId, [
    CancelToken? cancelToken,
  ]);
}
