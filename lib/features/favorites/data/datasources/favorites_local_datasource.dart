import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';

class FavoritesLocalDatasource {
  const FavoritesLocalDatasource();

  Future<void> cacheFetchedFavProducts(
    FetchFavoriteProductsResponse favProducts,
  ) async {
    final box = await Hive.openLazyBox<FetchFavoriteProductsResponse>(
      HiveBoxes.favProductsBox,
    );
    await box.put(
      '${HiveKeys.favProductsResponse}_${currentUser!.token}',
      favProducts,
    );
  }

  Future<FetchFavoriteProductsResponse?> retrieveCachedFavProducts() async {
    final box = await Hive.openLazyBox<FetchFavoriteProductsResponse>(
      HiveBoxes.favProductsBox,
    );
    return box.get('${HiveKeys.favProductsResponse}_${currentUser!.token}');
  }

  Future<void> cacheFetchedFavStores(FetchFavStoresResponse favStores) async {
    final box = await Hive.openLazyBox<FetchFavStoresResponse>(
      HiveBoxes.favStoresBox,
    );
    await box.put(
      '${HiveKeys.favStoresResponse}_${currentUser!.token}',
      favStores,
    );
  }

  Future<FetchFavStoresResponse?> retrieveCachedFavStores() async {
    final box = await Hive.openLazyBox<FetchFavStoresResponse>(
      HiveBoxes.favStoresBox,
    );
    return box.get('${HiveKeys.favStoresResponse}_${currentUser!.token}');
  }

  Future<void> deleteCachedFavProducts() async {
    final box = await Hive.openLazyBox<FetchFavoriteProductsResponse>(
      HiveBoxes.favProductsBox,
    );
    await box.delete('${HiveKeys.favProductsResponse}_${currentUser!.token}');
  }

  Future<void> deleteCachedFavStores() async {
    final box = await Hive.openLazyBox<FetchFavStoresResponse>(
      HiveBoxes.favStoresBox,
    );
    await box.delete('${HiveKeys.favStoresResponse}_${currentUser!.token}');
  }
}
