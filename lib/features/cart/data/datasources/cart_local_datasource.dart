import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';

class CartLocalDatasource {
  CartLocalDatasource._();

  static Future<void> cacheCart(FetchCartResponse cartResponse) async {
    final box = await Hive.openBox<FetchCartResponse>(
      HiveBoxes.cartResponseBox,
    );
    await box.put(HiveBoxes.cartResponseBox, cartResponse);
  }

  static Future<FetchCartResponse?> retrieveCachedCart() async {
    final box = await Hive.openBox<FetchCartResponse>(
      HiveBoxes.cartResponseBox,
    );
    return box.get(HiveBoxes.cartResponseBox);
  }

  static Future<void> deleteCachedCart() async {
    final box = await Hive.openBox<FetchCartResponse>(
      HiveBoxes.cartResponseBox,
    );
    await box.delete(HiveBoxes.cartResponseBox);
  }
}
