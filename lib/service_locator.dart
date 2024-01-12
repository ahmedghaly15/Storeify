import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_ify/core/api/app_interceptors.dart';
import 'package:store_ify/core/api/dio_consumer.dart';
import 'package:store_ify/core/helpers/cache_helper.dart';
import 'package:store_ify/core/network/network_info.dart';
import 'package:store_ify/core/network/network_info_impl.dart';
import 'package:store_ify/features/auth/data/repositories/forgot_password/forgot_password_repo.dart';
import 'package:store_ify/features/auth/data/repositories/forgot_password/forgot_password_repo_impl.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forget_password_cubit.dart';

final GetIt serviceLocator = GetIt.instance;

class ServiceLocator {
  Future<void> setupServiceLocator() async {
    await _setupForExternal();

    _setupForCore();

    _setupForRepos();

    _setupForCubits();
  }

  Future<void> _setupForExternal() async {
    serviceLocator.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    serviceLocator
        .registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    serviceLocator.registerLazySingleton<AppInterceptors>(
      () => AppInterceptors(),
    );

    serviceLocator.registerLazySingleton<LogInterceptor>(
      () => LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ),
    );

    serviceLocator.registerLazySingleton<Dio>(() => Dio());
  }

  void _setupForCore() {
    serviceLocator.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        connectionChecker: serviceLocator.get<InternetConnectionChecker>(),
      ),
    );

    serviceLocator.registerLazySingleton<CacheHelper>(
      () => CacheHelper(serviceLocator<SharedPreferences>()),
    );

    serviceLocator.registerLazySingleton<DioConsumer>(
      () => DioConsumer(dio: serviceLocator.get<Dio>()),
    );
  }

  void _setupForRepos() {
    serviceLocator.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepoImpl(
        dioConsumer: serviceLocator.get<DioConsumer>(),
      ),
    );
  }

  void _setupForCubits() {
    serviceLocator.registerFactory<ForgotPasswordCubit>(
      () => ForgotPasswordCubit(
        forgotPasswordRepo: serviceLocator.get<ForgotPasswordRepo>(),
      ),
    );
  }
}
