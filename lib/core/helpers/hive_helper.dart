import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/models/pagination.dart';
import 'package:store_ify/core/models/storeify_user.dart';
import 'package:store_ify/features/cart/data/models/cart.dart';
import 'package:store_ify/features/cart/data/models/cart_product.dart';
import 'package:store_ify/features/cart/data/models/fetch_cart_response.dart';
import 'package:store_ify/features/categories/data/models/category.dart';
import 'package:store_ify/features/categories/data/models/fetch_categories_response.dart';
import 'package:store_ify/features/categories/data/models/fetch_sub_category_response.dart';
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
    Hive.registerAdapter(ProductColorAdapter());
    Hive.registerAdapter(ProductSizeAdapter());
    Hive.registerAdapter(StoreAdapter());
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(SubCategoryAdapter());
    Hive.registerAdapter(PaginationAdapter());
    Hive.registerAdapter(CartProductAdapter());
    Hive.registerAdapter(CartAdapter());
    Hive.registerAdapter(FetchCartResponseAdapter());
    Hive.registerAdapter(FetchSubCategoryResponseAdapter());
    Hive.registerAdapter(FetchCategoriesResponseAdapter());
  }
}
