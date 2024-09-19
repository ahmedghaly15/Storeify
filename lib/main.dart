import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:store_ify/core/helpers/hive_helper.dart';
import 'package:store_ify/core/utils/functions/check_if_onboarding_visited.dart';
import 'package:store_ify/core/utils/functions/check_if_user_is_logged_in.dart';
import 'package:store_ify/core/utils/functions/get_and_cache_country_code.dart';
import 'package:store_ify/storeify_app.dart';
import 'package:store_ify/core/utils/bloc_observer.dart';
import 'package:store_ify/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  await HiveHelper.registerAdapters();
  setupDI();
  Bloc.observer = MyBlocObserver();
  await checkIfOnboardingIsVisited();
  await checkIfUserLoggedIn();
  await getAndCacheCountryCode();
  // TODO: add some animations to the whole app
  // TODO: remember to handle empty lists in the UI
  runApp(const StoreifyApp());
}
