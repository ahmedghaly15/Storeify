import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';

class CategoriesLocalDatasource {
  const CategoriesLocalDatasource();

  Future<void> cacheCategories(FetchCategoriesResponse categories) async {
    final box = await Hive.openBox<FetchCategoriesResponse>(
        HiveBoxes.categoriesResponse);
    await box.put(HiveBoxes.categoriesResponse, categories);
  }

  Future<FetchCategoriesResponse?> getCachedCategories() async {
    final box = await Hive.openBox<FetchCategoriesResponse>(
        HiveBoxes.categoriesResponse);
    return box.get(HiveBoxes.categoriesResponse);
  }

  Future<void> deleteCachedCategories() async {
    final box = await Hive.openBox<FetchCategoriesResponse>(
        HiveBoxes.categoriesResponse);
    await box.delete(HiveBoxes.categoriesResponse);
  }

  Future<void> cacheSubCategory(FetchSubCategoryResponse subCategory) async {
    final box =
        await Hive.openBox<FetchSubCategoryResponse>(HiveBoxes.subCategoryBox);
    await box.put(HiveBoxes.subCategoryBox, subCategory);
  }

  Future<FetchSubCategoryResponse?> getCachedSubCategory() async {
    final box =
        await Hive.openBox<FetchSubCategoryResponse>(HiveBoxes.subCategoryBox);
    return box.get(HiveBoxes.subCategoryBox);
  }

  Future<void> deleteCachedSubCategory() async {
    final box =
        await Hive.openBox<FetchSubCategoryResponse>(HiveBoxes.subCategoryBox);
    await box.delete(HiveBoxes.subCategoryBox);
  }
}
