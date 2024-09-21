import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/api/dio_factory.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/locale_repo.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/services/location_service.dart';
import 'package:store_ify/core/themes/theming_cubit.dart';
import 'package:store_ify/features/auth/data/api/forgot_password_api_service.dart';
import 'package:store_ify/features/auth/data/api/login_api_service.dart';
import 'package:store_ify/features/auth/data/api/register_api_service.dart';
import 'package:store_ify/features/auth/data/api/reset_password_api_service.dart';
import 'package:store_ify/features/auth/data/api/validate_otp_api_service.dart';
import 'package:store_ify/features/auth/data/repos/forgot_password_repo.dart';
import 'package:store_ify/features/auth/data/repos/login_repo.dart';
import 'package:store_ify/features/auth/data/repos/register_repo.dart';
import 'package:store_ify/features/auth/data/repos/reset_password_repo.dart';
import 'package:store_ify/features/auth/data/repos/validate_otp_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_cubit.dart';
import 'package:store_ify/features/cart/data/api/cart_api_service.dart';
import 'package:store_ify/features/cart/data/datasources/cart_local_datasource.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo.dart';
import 'package:store_ify/features/cart/data/repositories/cart_repo_impl.dart';
import 'package:store_ify/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:store_ify/features/categories/data/datasources/categories_local_datasource.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo.dart';
import 'package:store_ify/features/categories/data/repositories/categories_repo_impl.dart';
import 'package:store_ify/features/categories/presentation/cubit/categories/categories_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/sub_category/sub_category_cubit.dart';
import 'package:store_ify/features/checkout/data/repositories/checkout_repo.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/favorites/data/datasources/favorites_local_datasource.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo.dart';
import 'package:store_ify/features/favorites/data/repositories/favorites_repo_impl.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/home/data/repos/home_repo.dart';
import 'package:store_ify/features/home/datasources/home_local_datasource.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/onboarding/data/repositories/onboarding_repo.dart';
import 'package:store_ify/features/onboarding/data/repositories/onboarding_repo_impl.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:store_ify/features/payment/data/repositories/payment_repo.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/profile/data/repos/profile_repo.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/search/data/repositories/search_repo.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';
import 'package:store_ify/features/stores/data/datasources/stores_local_datasource.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo.dart';
import 'package:store_ify/features/stores/data/repositories/stores_repo_impl.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupDI() {
  _setupDIForCore();
  _setupForApiServices();
  _setupDIForDatasources();
  _setupDIForRepos();
  _setupDIForCubits();
}

void _setupDIForCore() {
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerLazySingleton<LocationService>(() => LocationService());
}

void _setupForApiServices() {
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<RegisterApiService>(
    () => RegisterApiService(dio),
  );
  getIt.registerLazySingleton<ForgotPasswordApiService>(
    () => ForgotPasswordApiService(dio),
  );
  getIt.registerLazySingleton<ValidateOtpApiService>(
    () => ValidateOtpApiService(dio),
  );
  getIt.registerLazySingleton<ResetPasswordApiService>(
    () => ResetPasswordApiService(dio),
  );
  getIt.registerLazySingleton<CartApiService>(() => CartApiService(dio));
}

void _setupDIForDatasources() {
  getIt.registerLazySingleton<CategoriesLocalDatasource>(
    () => const CategoriesLocalDatasource(),
  );
  getIt.registerLazySingleton<HomeLocalDatasource>(
    () => const HomeLocalDatasource(),
  );
  getIt.registerLazySingleton<CartLocalDatasource>(
    () => const CartLocalDatasource(),
  );
  getIt.registerLazySingleton<FavoritesLocalDatasource>(
    () => const FavoritesLocalDatasource(),
  );
  getIt.registerLazySingleton<StoresLocalDatasource>(
    () => const StoresLocalDatasource(),
  );
}

void _setupDIForRepos() {
  getIt.registerLazySingleton<LocaleRepo>(
    () => LocaleRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt.get<LoginApiService>()),
  );
  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepo(getIt.get<RegisterApiService>()),
  );
  getIt.registerLazySingleton<ForgotPasswordRepo>(
    () => ForgotPasswordRepo(getIt.get<ForgotPasswordApiService>()),
  );
  getIt.registerLazySingleton<ValidateOtpRepo>(
    () => ValidateOtpRepo(getIt.get<ValidateOtpApiService>()),
  );
  getIt.registerLazySingleton<ResetPasswordRepo>(
    () => ResetPasswordRepo(getIt.get<ResetPasswordApiService>()),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(
      getIt.get<ApiService>(),
      getIt.get<HomeLocalDatasource>(),
    ),
  );
  getIt.registerLazySingleton<CategoriesRepo>(
    () => CategoriesRepoImpl(
      getIt.get<ApiService>(),
      getIt.get<CategoriesLocalDatasource>(),
    ),
  );
  getIt.registerLazySingleton<StoresRepo>(
    () => StoresRepoImpl(
      getIt.get<ApiService>(),
      getIt.get<StoresLocalDatasource>(),
    ),
  );
  getIt.registerLazySingleton<FavoritesRepo>(
    () => FavoritesRepoImpl(
      getIt.get<ApiService>(),
      getIt.get<FavoritesLocalDatasource>(),
    ),
  );
  getIt.registerLazySingleton<OnboardingRepo>(
    () => const OnboardingRepoImpl(),
  );
  getIt.registerLazySingleton<CartRepo>(
    () => CartRepoImpl(
      getIt.get<CartApiService>(),
      getIt.get<CartLocalDatasource>(),
    ),
  );
  getIt.registerLazySingleton<CheckoutRepo>(
    () => CheckoutRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<PaymentRepo>(
    () => PaymentRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<ProfileRepo>(
    () => ProfileRepoImpl(getIt.get<ApiService>()),
  );
  getIt.registerLazySingleton<SearchRepo>(
    () => SearchRepo(getIt.get<ApiService>()),
  );
}

void _setupDIForCubits() {
  getIt.registerFactory<LocaleCubit>(
    () => LocaleCubit(getIt.get<LocaleRepo>()),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<LoginRepo>()),
  );
  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(getIt.get<RegisterRepo>()),
  );
  getIt.registerFactory<ForgotPasswordCubit>(
    () => ForgotPasswordCubit(getIt.get<ForgotPasswordRepo>()),
  );
  getIt.registerFactory<ValidateOtpCubit>(
    () => ValidateOtpCubit(getIt.get<ValidateOtpRepo>()),
  );
  getIt.registerFactory<ResetPasswordCubit>(
    () => ResetPasswordCubit(getIt.get<ResetPasswordRepo>()),
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
    () => PaymentCubit(getIt.get<PaymentRepo>()),
  );
  getIt.registerFactory<ProfileCubit>(
    () => ProfileCubit(getIt.get<ProfileRepo>()),
  );
  getIt.registerFactory<SearchCubit>(
    () => SearchCubit(getIt.get<SearchRepo>()),
  );
  getIt.registerFactory<ThemingCubit>(() => ThemingCubit());
}