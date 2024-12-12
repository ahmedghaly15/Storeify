import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/models/color.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/models/size.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/features/home/data/models/sub_category.dart';
import 'package:store_ify/features/search/data/models/fetch_search_data_response.dart';
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
    Hive.registerAdapter(FetchSubCategoryResponseAdapter());
    Hive.registerAdapter(FetchCategoriesResponseAdapter());
    Hive.registerAdapter(FetchFavStoresResponseAdapter());
    Hive.registerAdapter(FetchFavoriteProductsResponseAdapter());
    Hive.registerAdapter(FetchStoresResponseAdapter());
    Hive.registerAdapter(StoreBranchAdapter());
    Hive.registerAdapter(FetchStoreBranchesResponseAdapter());
    Hive.registerAdapter(FetchStoreCategoriesResponseAdapter());
    Hive.registerAdapter(FetchStoreOffersResponseAdapter());
    Hive.registerAdapter(SearchDataItemAdapter());
    Hive.registerAdapter(FetchSearchDataResponseAdapter());
  }
}
