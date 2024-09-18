import 'package:dio/dio.dart';
import 'package:store_ify/core/api/api_result.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/favorites/data/models/prefer_params.dart';

enum FavItemType { product, store }

abstract class FavoritesRepo {
  Future<ApiResult<void>> preferItem({
    required PreferParams params,
    required FavItemType itemType,
    CancelToken? cancelToken,
  });

  Future<ApiResult<void>> removeItemFromFavs({
    required int itemId,
    required FavItemType itemType,
    CancelToken? cancelToken,
  });

  Future<ApiResult<FetchFavoriteProductsResponse>> fetchFavoriteProducts([
    CancelToken? cancelToken,
  ]);

  Future<ApiResult<FetchFavStoresResponse>> fetchFavStores([
    CancelToken? cancelToken,
  ]);
}
