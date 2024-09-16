import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
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
}
