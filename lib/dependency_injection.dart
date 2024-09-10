import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/api/dio_factory.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/locale_repo.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/features/auth/data/repos/auth_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_cubit.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';
import 'package:store_ify/features/checkout/data/repositories/checkout_repo.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/home/data/repos/home_repo.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/onboarding/data/repositories/onboarding_repo.dart';
import 'package:store_ify/features/onboarding/data/repositories/onboarding_repo_impl.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupDI() {
  _setupDIForCore();
  _setupDIForRepos();
  _setupDIForCubits();
}

void _setupDIForCore() {
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerLazySingleton<LocationService>(() => LocationService());
}

void _setupDIForRepos() {
  getIt.registerLazySingleton<LocaleRepo>(() => const LocaleRepo());
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepo(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<CategoriesRepo>(
    () => CategoriesRepo(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<StoresRepo>(
    () => StoresRepo(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<FavoritesRepo>(
    () => FavoritesRepo(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<OnboardingRepo>(
    () => const OnboardingRepoImpl(),
  );
  getIt.registerLazySingleton<CartRepo>(
    () => CartRepo(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<CheckoutRepo>(
    () => CheckoutRepoImpl(getIt.get<ApiService>()),
  );
}

void _setupDIForCubits() {
  getIt.registerFactory<LocaleCubit>(
    () => LocaleCubit(getIt.get<LocaleRepo>()),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<AuthRepo>()),
  );
  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(getIt.get<AuthRepo>()),
  );
  getIt.registerFactory<ForgotPasswordCubit>(
    () => ForgotPasswordCubit(getIt.get<AuthRepo>()),
  );
  getIt.registerFactory<ValidateOtpCubit>(
    () => ValidateOtpCubit(getIt.get<AuthRepo>()),
  );
  getIt.registerFactory<ResetPasswordCubit>(
    () => ResetPasswordCubit(getIt.get<AuthRepo>()),
  );
  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(getIt.get<HomeRepo>()),
  );
  getIt.registerFactory<CategoriesCubit>(
    () => CategoriesCubit(getIt.get<CategoriesRepo>()),
  );
  getIt.registerFactory<SubCategoryCubit>(
    () => SubCategoryCubit(getIt.get<CategoriesRepo>()),
  );
  getIt.registerFactory<StoresCubit>(
    () => StoresCubit(getIt.get<StoresRepo>()),
  );
  getIt.registerFactory<StoreDetailsCubit>(
    () => StoreDetailsCubit(getIt.get<StoresRepo>()),
  );
  getIt.registerFactory<FavoritesCubit>(
    () => FavoritesCubit(getIt.get<FavoritesRepo>()),
  );
  getIt.registerFactory<FetchFavoritesCubit>(
    () => FetchFavoritesCubit(getIt.get<FavoritesRepo>()),
  );
  getIt.registerFactory<OnboardingCubit>(
    () => OnboardingCubit(getIt.get<OnboardingRepo>()),
  );
  getIt.registerFactory<CartCubit>(
    () => CartCubit(getIt.get<CartRepo>()),
  );
  getIt.registerFactory<CheckoutCubit>(
    () => CheckoutCubit(getIt.get<CheckoutRepo>()),
  );
  getIt.registerFactory<PaymentMethodCubit>(
    () => PaymentMethodCubit(getIt.get<CheckoutRepo>()),
  );
  getIt.registerFactory<PaymentCubit>(
    () => PaymentCubit(),
  );
}
