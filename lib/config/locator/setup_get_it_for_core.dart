part of 'package:store_ify/service_locator.dart';

class SetupGetItForCore {
  void setup() {
    getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        connectionChecker: getIt.get<InternetConnectionChecker>(),
      ),
    );

    getIt.registerLazySingleton<CacheHelper>(
      () => CacheHelper(getIt<SharedPreferences>()),
    );

    getIt.registerLazySingleton<DioConsumer>(
      () => DioConsumer(dio: getIt.get<Dio>()),
    );

    getIt.registerLazySingleton<ApiConsumer>(() => getIt.get<DioConsumer>());
  }
}
