import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/models/storeify_user.dart';

class HiveHelper {
  HiveHelper._();

  static Future<void> registerAdapters() async {
    Hive.registerAdapter(StoreifyUserAdapter());
    Hive.registerAdapter(UserDataAdapter());
  }
}
