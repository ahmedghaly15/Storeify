import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/helpers/hive_helper.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/utils/bloc_observer.dart';
import 'package:store_ify/core/utils/functions/check_if_onboarding_visited.dart';
import 'package:store_ify/core/utils/functions/check_if_user_is_logged_in.dart';
import 'package:store_ify/core/utils/functions/get_and_cache_country_code.dart';
import 'package:store_ify/generated/codegen_loader.g.dart';
import 'package:store_ify/storeify_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  await HiveHelper.registerAdapters();
  await setupDI();
  Bloc.observer = MyBlocObserver();
  await checkIfOnboardingIsVisited();
  await checkIfUserIsLoggedIn();
  await getAndCacheCountryCode();
  // TODO: add some animations to the whole app
  // TODO: remember to handle empty lists in the UI
  // TODO: handle save card details logic using hive
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale(AppStrings.arabicLangCode),
        Locale(AppStrings.englishLangCode),
      ],
      path: AppStrings.localePath,
      fallbackLocale: const Locale(AppStrings.englishLangCode),
      assetLoader: const CodegenLoader(),
      child: const StoreifyApp(),
    ),
  );
}
