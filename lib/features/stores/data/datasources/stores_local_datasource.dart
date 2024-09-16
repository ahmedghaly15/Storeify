import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';

class StoresLocalDatasource {
  const StoresLocalDatasource();

  Future<void> cacheFetchedStores(FetchStoresResponse stores) async {
    final box = await Hive.openBox<FetchStoresResponse>(
      HiveBoxes.fetchStoresBox,
    );
    await box.put(HiveKeys.fetchedStoresResponse, stores);
  }

  Future<FetchStoresResponse?> retrieveFetchedStores() async {
    final box = await Hive.openBox<FetchStoresResponse>(
      HiveBoxes.fetchStoresBox,
    );
    return box.get(HiveKeys.fetchedStoresResponse);
  }

  Future<void> cacheFetchedCategoryStores(FetchStoresResponse stores) async {
    final box = await Hive.openBox<FetchStoresResponse>(
      HiveBoxes.fetchCategoryStoresBox,
    );
    await box.put(HiveKeys.fetchedCategoryStoresResponse, stores);
  }

  Future<FetchStoresResponse?> retrieveFetchedCategoryStores() async {
    final box = await Hive.openBox<FetchStoresResponse>(
      HiveBoxes.fetchCategoryStoresBox,
    );
    return box.get(HiveKeys.fetchedCategoryStoresResponse);
  }

  Future<void> cacheFetchedStoreBranches(
    FetchStoreBranchesResponse storeBranches,
  ) async {
    final box = await Hive.openBox<FetchStoreBranchesResponse>(
      HiveBoxes.fetchStoreBranchesBox,
    );
    await box.put(HiveKeys.fetchedStoreBranchesResponse, storeBranches);
  }

  Future<FetchStoreBranchesResponse?> retrieveFetchedStoreBranches() async {
    final box = await Hive.openBox<FetchStoreBranchesResponse>(
      HiveBoxes.fetchStoreBranchesBox,
    );
    return box.get(HiveKeys.fetchedStoreBranchesResponse);
  }

  Future<void> cacheFetchedStoreCategories(
    FetchStoreCategoriesResponse storeCategories,
  ) async {
    final box = await Hive.openBox<FetchStoreCategoriesResponse>(
      HiveBoxes.fetchStoreCategoriesBox,
    );
    await box.put(HiveKeys.fetchedStoreCategoriesResponse, storeCategories);
  }

  Future<FetchStoreCategoriesResponse?> retrieveFetchedStoreCategories() async {
    final box = await Hive.openBox<FetchStoreCategoriesResponse>(
      HiveBoxes.fetchStoreCategoriesBox,
    );
    return box.get(HiveKeys.fetchedStoreCategoriesResponse);
  }

  Future<void> cacheFetchedStoreOffers(
    FetchStoreOffersResponse storeOffers,
  ) async {
    final box = await Hive.openBox<FetchStoreOffersResponse>(
      HiveBoxes.fetchStoreOffersBox,
    );
    await box.put(HiveKeys.fetchedStoreOffersResponse, storeOffers);
  }

  Future<FetchStoreOffersResponse?> retrieveFetchedStoreOffers() async {
    final box = await Hive.openBox<FetchStoreOffersResponse>(
      HiveBoxes.fetchStoreOffersBox,
    );
    return box.get(HiveKeys.fetchedStoreOffersResponse);
  }
}
