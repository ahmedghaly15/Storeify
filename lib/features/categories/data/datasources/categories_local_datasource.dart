import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/helpers/hive_keys.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

class CategoriesLocalDatasource {
  const CategoriesLocalDatasource();

  Future<void> cacheCategories(FetchCategoriesResponse categories) async {
    final box = await Hive.openBox<FetchCategoriesResponse>(
      HiveBoxes.categoriesResponseBox,
    );
    await box.put(HiveKeys.categoriesResponse, categories);
  }

  Future<FetchCategoriesResponse?> getCachedCategories() async {
    final box = await Hive.openBox<FetchCategoriesResponse>(
      HiveBoxes.categoriesResponseBox,
    );
    return box.get(HiveKeys.categoriesResponse);
  }

  Future<void> cacheSubCategory(FetchSubCategoryResponse subCategory) async {
    final box =
        await Hive.openBox<FetchSubCategoryResponse>(HiveBoxes.subCategoryBox);
    await box.put(HiveKeys.subCategoryResponse, subCategory);
  }

  Future<FetchSubCategoryResponse?> getCachedSubCategory() async {
    final box =
        await Hive.openBox<FetchSubCategoryResponse>(HiveBoxes.subCategoryBox);
    return box.get(HiveKeys.subCategoryResponse);
  }
}
