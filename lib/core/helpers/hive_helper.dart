import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

class HiveHelper {
  HiveHelper._();

  static Future<void> registerAdapters() async {
    Hive.registerAdapter(StoreifyUserAdapter());
    Hive.registerAdapter(UserDataAdapter());
    Hive.registerAdapter(FetchHomeResponseAdapter());
  }
}
