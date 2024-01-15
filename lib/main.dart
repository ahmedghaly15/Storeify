import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/storeify_app.dart';
import 'package:store_ify/bloc_observer.dart';
import 'package:store_ify/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  await ServiceLocator().setup();

  runApp(const StoreifyApp());
}
