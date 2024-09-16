import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/models/color.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/size.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/cart/data/models/cart.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/features/home/data/models/product.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';
import 'package:store_ify/features/stores/data/models/store.dart';

class HiveHelper {
  HiveHelper._();

  static Future<void> registerAdapters() async {
    Hive.registerAdapter(StoreifyUserAdapter());
    Hive.registerAdapter(UserDataAdapter());
    Hive.registerAdapter(FetchHomeResponseAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductImgAdapter());
    Hive.registerAdapter(ColorAdapter());
    Hive.registerAdapter(SizeAdapter());
    Hive.registerAdapter(StoreAdapter());
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(SubCategoryAdapter());
    Hive.registerAdapter(PaginationAdapter());
    Hive.registerAdapter(CartAdapter());
    Hive.registerAdapter(FetchCartResponseAdapter());
    Hive.registerAdapter(FetchSubCategoryResponseAdapter());
    Hive.registerAdapter(FetchCategoriesResponseAdapter());
    Hive.registerAdapter(FetchFavStoresResponseAdapter());
    Hive.registerAdapter(FetchFavoriteProductsResponseAdapter());
  }

  static Future<void> clearAllBoxes() async {
    final homeResponseBox = await Hive.openBox<FetchHomeResponse>(
      HiveBoxes.homeResponseBox,
    );
    final cartResponseBox = await Hive.openBox<FetchCartResponse>(
      HiveBoxes.cartResponseBox,
    );
    final categoriesResponseBox = await Hive.openBox<FetchCategoriesResponse>(
      HiveBoxes.categoriesResponseBox,
    );
    final subCategoryBox = await Hive.openBox<FetchSubCategoryResponse>(
      HiveBoxes.subCategoryBox,
    );
    final favProductsBox = await Hive.openBox<FetchFavoriteProductsResponse>(
      HiveBoxes.favProductsBox,
    );
    final favStoresBox = await Hive.openBox<FetchFavStoresResponse>(
      HiveBoxes.favStoresBox,
    );

    debugPrint('********** ALL BOXES CLEARED **********');

    await Future.wait([
      homeResponseBox.clear(),
      cartResponseBox.clear(),
      categoriesResponseBox.clear(),
      subCategoryBox.clear(),
      favProductsBox.clear(),
      favStoresBox.clear(),
    ]);
  }
}
