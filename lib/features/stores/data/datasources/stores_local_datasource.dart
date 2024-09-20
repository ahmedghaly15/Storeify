import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

class StoresLocalDatasource {
  const StoresLocalDatasource();

  Future<void> cacheStores(FetchStoresResponse stores) async {
    final box = await Hive.openLazyBox<FetchStoresResponse>(
      HiveBoxes.fetchStoresBox,
    );
    await box.put(
      '${HiveKeys.fetchedStoresResponse}_${currentUser!.token}',
      stores,
    );
  }

  Future<FetchStoresResponse?> retrieveCachedStores() async {
    final box = await Hive.openLazyBox<FetchStoresResponse>(
      HiveBoxes.fetchStoresBox,
    );
    return box.get('${HiveKeys.fetchedStoresResponse}_${currentUser!.token}');
  }

  Future<void> cacheCategoryStores(FetchStoresResponse stores) async {
    final box = await Hive.openLazyBox<FetchStoresResponse>(
      HiveBoxes.fetchCategoryStoresBox,
    );
    await box.put(
      '${HiveKeys.fetchedCategoryStoresResponse}_${currentUser!.token}',
      stores,
    );
  }

  Future<FetchStoresResponse?> retrieveCachedCategoryStores() async {
    final box = await Hive.openLazyBox<FetchStoresResponse>(
      HiveBoxes.fetchCategoryStoresBox,
    );
    return box.get(
      '${HiveKeys.fetchedCategoryStoresResponse}_${currentUser!.token}',
    );
  }

  Future<void> cacheStoreBranches(
    FetchStoreBranchesResponse storeBranches,
    int storeId,
  ) async {
    final box = await Hive.openLazyBox<FetchStoreBranchesResponse>(
      HiveBoxes.fetchStoreBranchesBox,
    );
    await box.put(
      '${HiveKeys.fetchedStoreBranchesResponse}_${storeId}_${currentUser!.token}',
      storeBranches,
    );
  }

  Future<FetchStoreBranchesResponse?> retrieveCachedStoreBranches(
    int storeId,
  ) async {
    final box = await Hive.openLazyBox<FetchStoreBranchesResponse>(
      HiveBoxes.fetchStoreBranchesBox,
    );
    return box.get(
      '${HiveKeys.fetchedStoreBranchesResponse}_${storeId}_${currentUser!.token}',
    );
  }

  Future<void> cacheStoreCategories(
    FetchStoreCategoriesResponse storeCategories,
    int storeId,
  ) async {
    final box = await Hive.openLazyBox<FetchStoreCategoriesResponse>(
      HiveBoxes.fetchStoreCategoriesBox,
    );
    await box.put(
      '${HiveKeys.fetchedStoreCategoriesResponse}_${storeId}_${currentUser!.token}',
      storeCategories,
    );
  }

  Future<FetchStoreCategoriesResponse?> retrieveCachedStoreCategories(
    int storeId,
  ) async {
    final box = await Hive.openLazyBox<FetchStoreCategoriesResponse>(
      HiveBoxes.fetchStoreCategoriesBox,
    );
    return box.get(
      '${HiveKeys.fetchedStoreCategoriesResponse}_${storeId}_${currentUser!.token}',
    );
  }

  Future<void> cacheStoreOffers(
    FetchStoreOffersResponse storeOffers,
    int storeId,
  ) async {
    final box = await Hive.openLazyBox<FetchStoreOffersResponse>(
      HiveBoxes.fetchStoreOffersBox,
    );
    await box.put(
      '${HiveKeys.fetchedStoreOffersResponse}_${storeId}_${currentUser!.token}',
      storeOffers,
    );
  }

  Future<FetchStoreOffersResponse?> retrieveCachedStoreOffers(
    int storeId,
  ) async {
    final box = await Hive.openLazyBox<FetchStoreOffersResponse>(
      HiveBoxes.fetchStoreOffersBox,
    );
    return box.get(
      '${HiveKeys.fetchedStoreOffersResponse}_${storeId}_${currentUser!.token}',
    );
  }
}
