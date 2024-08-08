import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_ify/core/api/api_service.dart';
import 'package:store_ify/core/api/dio_factory.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/locale_repo.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/features/auth/data/repos/auth_repo.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_cubit.dart';

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
}

void _setupDIForRepos() {
  getIt.registerLazySingleton<LocaleRepo>(() => const LocaleRepo());
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepo(getIt.get<ApiService>()),
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
}
