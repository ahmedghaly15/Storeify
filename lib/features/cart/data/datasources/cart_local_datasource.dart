import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';

class CartLocalDatasource {
  const CartLocalDatasource();

  Future<void> cacheCart(FetchCartResponse cartResponse) async {
    final box = await Hive.openLazyBox<FetchCartResponse>(
      HiveBoxes.cartResponseBox,
    );
    await box.put(
        '${HiveKeys.cartResponse}_${currentUser!.token}', cartResponse);
  }

  Future<FetchCartResponse?> retrieveCachedCart() async {
    final box = await Hive.openLazyBox<FetchCartResponse>(
      HiveBoxes.cartResponseBox,
    );
    return box.get('${HiveKeys.cartResponse}_${currentUser!.token}');
  }
}
