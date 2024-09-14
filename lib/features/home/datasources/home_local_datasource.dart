import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

class HomeLocalDatasource {
  HomeLocalDatasource._();

  static Future<void> cacheHomeResponse(FetchHomeResponse homeResponse) async {
    final box =
        await Hive.openBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    await box.put(HiveBoxes.homeResponseBox, homeResponse);
  }

  static Future<FetchHomeResponse?> retrieveCachedHomeResponse() async {
    final box =
        await Hive.openBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    return box.get(HiveBoxes.homeResponseBox);
  }

  static Future<void> deleteCachedHomeResponse() async {
    final box =
        await Hive.openBox<FetchHomeResponse>(HiveBoxes.homeResponseBox);
    await box.delete(HiveBoxes.homeResponseBox);
  }
}
