import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/core/locale/models/change_api_lang_params.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';
import 'package:store_ify/features/checkout/data/models/checkout_params.dart';
import 'package:store_ify/features/checkout/data/models/checkout_response.dart';
import 'package:store_ify/features/checkout/data/models/choose_payment_method_params.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/features/payment/data/models/pay_params.dart';
import 'package:store_ify/features/search/data/models/search_params.dart';
import 'package:store_ify/features/search/data/models/search_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(EndPoints.fetchHomeData)
  Future<FetchHomeResponse> fetchHomeData([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.fetchStores)
  Future<FetchStoresResponse> fetchStores([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStores}/{category_id}')
  Future<FetchStoresResponse> fetchCategoryStores(
    @Path('category_id') String categoryId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStoreBranches}{store_id}')
  Future<FetchStoreBranchesResponse> fetchStoreBranches(
    @Path('store_id') int storeId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStoreCategories}{store_id}')
  Future<FetchStoreCategoriesResponse> fetchStoreCategories(
    @Path('store_id') int storeId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchStoreOffers}{store_id}')
  Future<FetchStoreOffersResponse> fetchStoreOffers(
    @Path('store_id') int storeId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.favorites)
  Future<void> preferProduct(
    @Body() PreferParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @DELETE('${EndPoints.favorites}{product_id}')
  Future<void> removeProductFromFavs(
    @Path('product_id') int productId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.favorites)
  Future<FetchFavoriteProductsResponse> fetchFavoriteProducts([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.favoriteStores)
  Future<void> preferStore(
    @Body() PreferParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @DELETE('${EndPoints.favoriteStores}{store_id}')
  Future<void> removeStoreFromFavs(
    @Path('store_id') int storeId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.favoriteStores)
  Future<FetchFavStoresResponse> fetchFavStores([
    @CancelRequest() CancelToken? cancelToken,
  ]);

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

  @POST('${EndPoints.pay}{orderId}')
  Future<void> orderPay(
    @Path('orderId') int orderId,
    @Body() PayParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.changeLang)
  Future<void> changeApiLang(@Body() ChangeApiLangParams params);

  @POST(EndPoints.logout)
  Future<void> logout();

  @POST(EndPoints.search)
  Future<SearchResponse> search(
    @Body() SearchParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
