import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/models/product_color.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/product.dart';
import 'package:store_ify/core/models/product_size.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_fav_stores_response.dart';
import 'package:store_ify/features/favorites/data/models/fetch_favorite_products_response.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';
import 'package:store_ify/core/models/sub_category.dart';
import 'package:store_ify/features/payment/data/models/card_type.dart';
import 'package:store_ify/features/payment/data/models/payment_card_details.dart';
import 'package:store_ify/features/search/data/models/fetch_search_data_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_branches.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_categories_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_store_offers_response.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';
import 'package:store_ify/core/models/store.dart';

class HiveHelper {
  HiveHelper._();

  static void registerAdapters() {
    Hive.registerAdapter(StoreifyUserAdapter());
    Hive.registerAdapter(UserDataAdapter());
    Hive.registerAdapter(FetchHomeResponseAdapter());
    Hive.registerAdapter(SubCategoryAdapter());
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(ProductImgAdapter());
    Hive.registerAdapter(ProductColorAdapter());
    Hive.registerAdapter(ProductSizeAdapter());
    Hive.registerAdapter(StoreAdapter());
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(PaginationAdapter());
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
    Hive.registerAdapter(CardTypeAdapter());
    Hive.registerAdapter(PaymentCardDetailsAdapter());
  }
}
