import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/functions/check_if_user_is_logged_in.dart';
import 'package:store_ify/storeify_app.dart';
import 'package:store_ify/bloc_observer.dart';
import 'package:store_ify/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  Bloc.observer = MyBlocObserver();
  await checkIfUserLoggedIn();
  runApp(const StoreifyApp());
}
