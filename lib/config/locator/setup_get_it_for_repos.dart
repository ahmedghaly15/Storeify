part of 'package:store_ify/service_locator.dart';

class SetupGetItForRepos {
  void setup() {
    getIt.registerLazySingleton<OnBoardingRepo>(() => OnBoardingRepoImpl());

    getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepoImpl(apiConsumer: getIt.get<DioConsumer>()),
    );

    getIt.registerLazySingleton<LoginRepo>(
      () => LoginRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
    );

    getIt.registerLazySingleton<SignUpRepo>(
      () => SingUpRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
    );

    getIt.registerLazySingleton<VerificationRepo>(
      () => VerificationRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
    );

    getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
    );

    getIt.registerLazySingleton<LayoutRepo>(
      () => LayoutRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
    );

    getIt.registerLazySingleton<CategoryRepo>(
      () => CategoryRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
    );

    getIt.registerLazySingleton<StoresRepo>(
      () => StoresRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
    );
  }
}
