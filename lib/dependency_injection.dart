import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_ify/core/helpers/cache_helper.dart';
import 'package:store_ify/core/network/network_info.dart';
import 'package:store_ify/core/network/network_info_impl.dart';
import 'package:store_ify/features/categories/data/repositories/category_repo.dart';
import 'package:store_ify/features/categories/presentation/cubit/category_cubit.dart';
import 'package:store_ify/features/layout/data/repositories/layout_repo.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:store_ify/features/onboarding/data/repositories/on_boarding_repo.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/clothes/clothes_stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/food/food_stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupDI() {
  _setupDIForCore();
  _setupDIForRepos();
  _setupDIForCubits();
}

void _setupDIForCore() {
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      connectionChecker: getIt.get<InternetConnectionChecker>(),
    ),
  );

  getIt.registerLazySingleton<CacheHelper>(
    () => CacheHelper(getIt<SharedPreferences>()),
  );
}

void _setupDIForRepos() {}

void _setupDIForCubits() {
  getIt.registerFactory<OnBoardingCubit>(
    () => OnBoardingCubit(onBoardingRepo: getIt.get<OnBoardingRepo>()),
  );

  getIt.registerFactory<LayoutCubit>(
    () => LayoutCubit(layoutRepo: getIt.get<LayoutRepo>()),
  );

  getIt.registerFactory<CategoryCubit>(
    () => CategoryCubit(categoryRepo: getIt.get<CategoryRepo>()),
  );

  getIt.registerFactory<StoresCubit>(
    () => StoresCubit(storesRepo: getIt.get<StoresRepo>()),
  );

  getIt.registerFactory<ClothesStoresCubit>(
    () => ClothesStoresCubit(storesRepo: getIt.get<StoresRepo>()),
  );

  getIt.registerFactory<FoodStoresCubit>(
    () => FoodStoresCubit(storesRepo: getIt.get<StoresRepo>()),
  );
}
