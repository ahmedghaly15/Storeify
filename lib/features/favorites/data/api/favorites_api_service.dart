import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_ify/core/api/end_points.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';

part 'favorites_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class FavoritesApiService {
  factory FavoritesApiService(Dio dio, {String baseUrl}) = _FavoritesApiService;

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
}
