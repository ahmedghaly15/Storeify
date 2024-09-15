import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';

abstract class FavoritesRepo {
  Future<ApiResult<void>> preferProduct(
    PreferParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> removeProductFromFavs(
    int productId, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<FetchFavoriteProductsResponse>> fetchFavoriteProducts([
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<FetchFavStoresResponse>> fetchFavStores([
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> preferStore(
    PreferParams params, [
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<void>> removeStoreFromFavs(
    int storeId, [
    CancelToken? cancelToken,
  ]);
}
