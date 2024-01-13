part of 'package:store_ify/service_locator.dart';

class SetupGetItForExternal {
  Future<void> setup() async {
    getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    getIt.registerLazySingleton<AppInterceptors>(
      () => AppInterceptors(),
    );

    getIt.registerLazySingleton<LogInterceptor>(
      () => LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ),
    );

    getIt.registerLazySingleton<Dio>(() => Dio());
  }
}
