import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

class HomeLocalDatasource {
  const HomeLocalDatasource();

  Future<void> cacheHomeResponse(FetchHomeResponse homeResponse) async {
    final box =
        await Hive.openBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    debugPrint('********* CACHED HOME RESPONSE *********');
    await box.put(HiveBoxes.homeResponseBox, homeResponse);
  }

  Future<FetchHomeResponse?> retrieveCachedHomeResponse() async {
    final box =
        await Hive.openBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    return box.get(HiveBoxes.homeResponseBox);
  }

  Future<void> deleteCachedHomeResponse() async {
    final box =
        await Hive.openBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    await box.delete(HiveBoxes.homeResponseBox);
  }
}
