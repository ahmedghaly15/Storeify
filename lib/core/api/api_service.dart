import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/auth/data/models/forgot_password_params.dart';
import 'package:store_ify/features/auth/data/models/login_params.dart';
import 'package:store_ify/features/auth/data/models/register_params.dart';
import 'package:store_ify/features/auth/data/models/reset_password_params.dart';
import 'package:store_ify/features/auth/data/models/validate_otp_params.dart';
import 'package:store_ify/features/cart/data/models/add_product_to_cart_params.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoints.login)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<StoreifyUser> login(
    @Body() LoginParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.register)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<StoreifyUser> register(
    @Body() RegisterParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.forgotPassword)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<void> forgotPassword(
    @Body() ForgotPasswordParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.validateOtp)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<void> validateOtp(
    @Body() ValidateOtpParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.resetPassword)
  @retrofit.Headers({'Accept-Language': 'en'})
  Future<void> resetPassword(
    @Body() ResetPasswordParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.fetchHomeData)
  Future<FetchHomeResponse> fetchHomeData([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.fetchCategories)
  Future<List<Category>> fetchCategories([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET('${EndPoints.fetchCategories}/{category_id}/{sub_category_id}')
  Future<FetchSubCategoryResponse> fetchSubCategory(
    @Path('category_id') int categoryId,
    @Path('sub_category_id') int subCategoryId, [
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
