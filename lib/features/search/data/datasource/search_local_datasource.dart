import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/search/data/models/fetch_search_data_response.dart';

class SearchLocalDatasource {
  const SearchLocalDatasource();

  Future<void> cacheSearchData(FetchSearchDataResponse searchData) async {
    final box = await Hive.openLazyBox<FetchSearchDataResponse>(
        HiveBoxes.searchDataBox);
    debugPrint('*********** CACHED SEARCH DATA ***********');
    await box.put(
        '${HiveKeys.searchData}_${currentUser!.user.username}', searchData);
  }

  Future<FetchSearchDataResponse?> retrieveCachedSearchData() async {
    final box = await Hive.openLazyBox<FetchSearchDataResponse>(
        HiveBoxes.searchDataBox);
    return box.get('${HiveKeys.searchData}_${currentUser!.user.username}');
  }

  Future<void> deleteCachedSearchData() async {
    final box = await Hive.openLazyBox<FetchSearchDataResponse>(
        HiveBoxes.searchDataBox);
    await box.delete('${HiveKeys.searchData}_${currentUser!.user.username}');
  }
}
