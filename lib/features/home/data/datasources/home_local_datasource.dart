import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

class HomeLocalDatasource {
  const HomeLocalDatasource();

  Future<void> cacheHomeResponse(FetchHomeResponse homeResponse) async {
    final box =
        await Hive.openLazyBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    debugPrint('********* CACHED HOME RESPONSE *********');
    await box.put(
        '${HiveKeys.homeResponse}_${currentUser!.user.username}', homeResponse);
  }

  Future<FetchHomeResponse?> retrieveCachedHomeResponse() async {
    final box =
        await Hive.openLazyBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    return box.get('${HiveKeys.homeResponse}_${currentUser!.user.username}');
  }

  static Future<void> deleteHomeCachedResponse() async {
    final box =
        await Hive.openLazyBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    await box.delete('${HiveKeys.homeResponse}_${currentUser!.user.username}');
  }
}
