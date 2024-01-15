part of 'package:store_ify/service_locator.dart';

class SetupGetItForCubits {
  void setup() {
    getIt.registerFactory<OnBoardingCubit>(
      () => OnBoardingCubit(onBoardingRepo: getIt.get<OnBoardingRepo>()),
    );

    getIt.registerFactory<ForgotPasswordCubit>(
      () => ForgotPasswordCubit(
        forgotPasswordRepo: getIt.get<ForgotPasswordRepo>(),
      ),
    );

    getIt.registerFactory<LoginCubit>(
      () => LoginCubit(loginRepo: getIt.get<LoginRepo>()),
    );

    getIt.registerFactory<SignUpCubit>(
      () => SignUpCubit(signUpRepo: getIt.get<SignUpRepo>()),
    );

    getIt.registerFactory<VerificationCubit>(
      () => VerificationCubit(verificationRepo: getIt.get<VerificationRepo>()),
    );

    getIt.registerFactory<ResetPasswordCubit>(
      () => ResetPasswordCubit(
        resetPasswordRepo: getIt.get<ResetPasswordRepo>(),
      ),
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
}
