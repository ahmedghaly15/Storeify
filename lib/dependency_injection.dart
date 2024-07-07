import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/api/dio_factory.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/locale_repo.dart';
import 'package:store_ify/core/network/network_info.dart';
import 'package:store_ify/core/network/network_info_impl.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/features/auth/data/repos/login_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';

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

  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerSingleton<AppRouter>(AppRouter());
}

void _setupDIForRepos() {
  getIt.registerLazySingleton<LocaleRepo>(() => const LocaleRepo());
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt.get<ApiService>()),
  );
}

void _setupDIForCubits() {
  getIt.registerFactory<LocaleCubit>(
    () => LocaleCubit(getIt.get<LocaleRepo>()),
  );

  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<LoginRepo>()),
  );

  // getIt.registerFactory<OnBoardingCubit>(
  //   () => OnBoardingCubit(onBoardingRepo: getIt.get<OnBoardingRepo>()),
  // );

  // getIt.registerFactory<LayoutCubit>(
  //   () => LayoutCubit(layoutRepo: getIt.get<LayoutRepo>()),
  // );

  // getIt.registerFactory<CategoryCubit>(
  //   () => CategoryCubit(categoryRepo: getIt.get<CategoryRepo>()),
  // );

  // getIt.registerFactory<StoresCubit>(
  //   () => StoresCubit(storesRepo: getIt.get<StoresRepo>()),
  // );

  // getIt.registerFactory<ClothesStoresCubit>(
  //   () => ClothesStoresCubit(storesRepo: getIt.get<StoresRepo>()),
  // );

  // getIt.registerFactory<FoodStoresCubit>(
  //   () => FoodStoresCubit(storesRepo: getIt.get<StoresRepo>()),
  // );
}
