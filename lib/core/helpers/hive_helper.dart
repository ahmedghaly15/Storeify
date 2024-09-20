import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/hive_boxes.dart';
import 'package:store_ify/core/models/color.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/product.dart';
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
import 'package:store_ify/features/home/data/models/sub_category.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';
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
    Hive.registerAdapter(FetchStoresResponseAdapter());
    Hive.registerAdapter(StoreBranchAdapter());
    Hive.registerAdapter(FetchStoreBranchesResponseAdapter());
    Hive.registerAdapter(FetchStoreCategoriesResponseAdapter());
    Hive.registerAdapter(FetchStoreOffersResponseAdapter());
  }

  static Future<void> clearAllBoxes() async {
    final homeResponseBox = await Hive.openLazyBox<FetchHomeResponse>(
      HiveBoxes.homeResponseBox,
    );
    final cartResponseBox = await Hive.openLazyBox<FetchCartResponse>(
      HiveBoxes.cartResponseBox,
    );
    final categoriesResponseBox =
        await Hive.openLazyBox<FetchCategoriesResponse>(
      HiveBoxes.categoriesResponseBox,
    );
    final subCategoryBox = await Hive.openLazyBox<FetchSubCategoryResponse>(
      HiveBoxes.subCategoryBox,
    );
    final favProductsBox =
        await Hive.openLazyBox<FetchFavoriteProductsResponse>(
      HiveBoxes.favProductsBox,
    );
    final favStoresBox = await Hive.openLazyBox<FetchFavStoresResponse>(
      HiveBoxes.favStoresBox,
    );
    final storesBox = await Hive.openLazyBox<FetchStoresResponse>(
      HiveBoxes.fetchStoresBox,
    );
    final storeBranchesBox = await Hive.openLazyBox<FetchStoreBranchesResponse>(
      HiveBoxes.fetchStoreBranchesBox,
    );
    final storeCategoriesBox =
        await Hive.openLazyBox<FetchStoreCategoriesResponse>(
      HiveBoxes.fetchStoreCategoriesBox,
    );
    final storeOffersBox = await Hive.openLazyBox<FetchStoreOffersResponse>(
        HiveBoxes.fetchStoreOffersBox);
    final countryCodeBox = await Hive.openLazyBox<String>(
      HiveBoxes.countryCodeBox,
    );

    debugPrint('********** ALL BOXES CLEARED **********');

    await Future.wait([
      homeResponseBox.clear(),
      cartResponseBox.clear(),
      categoriesResponseBox.clear(),
      subCategoryBox.clear(),
      favProductsBox.clear(),
      favStoresBox.clear(),
      storesBox.clear(),
      storeBranchesBox.clear(),
      storeCategoriesBox.clear(),
      storeOffersBox.clear(),
      countryCodeBox.clear(),
    ]);
  }
}
