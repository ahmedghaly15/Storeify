part of 'package:store_ify/service_locator.dart';

class SetupGetItForRepos {
  void setup() {
    getIt.registerLazySingleton<OnBoardingRepo>(
      () => OnBoardingRepoImpl(),
    );

    getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepoImpl(
        dioConsumer: getIt.get<DioConsumer>(),
      ),
    );

    getIt.registerLazySingleton<LoginRepo>(
      () => LoginRepoImpl(
        dioConsumer: getIt.get<DioConsumer>(),
        networkInfo: getIt.get<NetworkInfo>(),
      ),
    );

    getIt.registerLazySingleton<SignUpRepo>(
      () => SingUpRepoImpl(
        dioConsumer: getIt.get<DioConsumer>(),
        networkInfo: getIt.get<NetworkInfo>(),
      ),
    );

    getIt.registerLazySingleton<VerificationRepo>(
      () => VerificationRepoImpl(
        dioConsumer: getIt.get<DioConsumer>(),
      ),
    );

    getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepoImpl(
        dioConsumer: getIt.get<DioConsumer>(),
      ),
    );

    getIt.registerLazySingleton<LayoutRepo>(() => LayoutRepoImpl());
  }
}
