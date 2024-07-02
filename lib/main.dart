import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/storeify_app.dart';
import 'package:store_ify/bloc_observer.dart';
import 'package:store_ify/dependency_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  Bloc.observer = MyBlocObserver();
  runApp(const StoreifyApp());
}
