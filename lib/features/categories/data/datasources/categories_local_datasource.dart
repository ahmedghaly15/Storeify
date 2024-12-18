import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';

class CategoriesLocalDatasource {
  const CategoriesLocalDatasource();

  Future<void> cacheCategories(FetchCategoriesResponse categories) async {
    final box = await Hive.openLazyBox<FetchCategoriesResponse>(
      HiveBoxes.categoriesResponseBox,
    );
    await box.put(
      '${HiveKeys.categoriesResponse}_${currentUser!.user.username}',
      categories,
    );
  }

  Future<FetchCategoriesResponse?> getCachedCategories() async {
    final box = await Hive.openLazyBox<FetchCategoriesResponse>(
      HiveBoxes.categoriesResponseBox,
    );
    return box.get(
      '${HiveKeys.categoriesResponse}_${currentUser!.user.username}',
    );
  }

  static Future<void> deleteCachedCategories() async {
    final box = await Hive.openLazyBox<FetchCategoriesResponse>(
      HiveBoxes.categoriesResponseBox,
    );
    await box.delete(
      '${HiveKeys.categoriesResponse}_${currentUser!.user.username}',
    );
  }
}
