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
import 'package:store_ify/features/auth/data/repositories/login/login_repo.dart';
import 'package:store_ify/features/auth/data/repositories/login/login_repo_impl.dart';
import 'package:store_ify/features/auth/data/repositories/reset_password/reset_password_repo.dart';
import 'package:store_ify/features/auth/data/repositories/reset_password/reset_password_repo_impl.dart';
import 'package:store_ify/features/auth/data/repositories/sign_up/sign_up_repo.dart';
import 'package:store_ify/features/auth/data/repositories/sign_up/sign_up_repo_impl.dart';
import 'package:store_ify/features/auth/data/repositories/verification/verification_repo.dart';
import 'package:store_ify/features/auth/data/repositories/verification/verification_repo_impl.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forget_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/sign_up/sign_up_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/verification/verification_cubit.dart';
import 'package:store_ify/features/categories/data/repositories/category_repo.dart';
import 'package:store_ify/features/categories/data/repositories/category_repo_impl.dart';
import 'package:store_ify/features/categories/presentation/cubit/category_cubit.dart';
import 'package:store_ify/features/layout/data/repositories/layout_repo.dart';
import 'package:store_ify/features/layout/data/repositories/layout_repo_impl.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:store_ify/features/onboarding/data/repositories/on_boarding_repo.dart';
import 'package:store_ify/features/onboarding/data/repositories/on_boarding_repo_impl.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/on_boarding_cubit.dart';

part 'package:store_ify/config/locator/setup_get_it_for_external.dart';
part 'package:store_ify/config/locator/setup_get_it_for_core.dart';
part 'package:store_ify/config/locator/setup_get_it_for_repos.dart';
part 'package:store_ify/config/locator/setup_get_it_for_cubits.dart';

final GetIt getIt = GetIt.instance;

class ServiceLocator {
  Future<void> setup() async {
    await SetupGetItForExternal().setup();

    SetupGetItForCore().setup();

    SetupGetItForRepos().setup();

    SetupGetItForCubits().setup();
  }
}
