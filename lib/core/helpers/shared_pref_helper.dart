import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_ify/core/di/dependency_injection.dart';

class SharedPrefHelper {
  // private constructor as I don't want to allow creating an instance of this class itself.
  SharedPrefHelper._();

  /// Removes a value from SharedPreferences with given [key].
  static Future<bool> removeData(String key) async {
    debugPrint('SharedPrefHelper : data with key : $key has been removed');
    return await getIt.get<SharedPreferences>().remove(key);
  }

  /// Removes all keys and values in the SharedPreferences
  static Future<bool> clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    return await getIt.get<SharedPreferences>().clear();
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
  static Future<bool> setData(String key, value) async {
    debugPrint("SharedPrefHelper : setData with key : $key and value : $value");
    switch (value.runtimeType) {
      case const (String):
        return await getIt.get<SharedPreferences>().setString(key, value);
      case const (int):
        return await getIt.get<SharedPreferences>().setInt(key, value);
      case const (bool):
        return await getIt.get<SharedPreferences>().setBool(key, value);
      case const (double):
        return await getIt.get<SharedPreferences>().setDouble(key, value);
      default:
        return false;
    }
  }

  /// Gets a bool value from SharedPreferences with given [key].
  static Future<bool?> getBool(String key) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    return getIt.get<SharedPreferences>().getBool(key);
  }

  /// Gets a double value from SharedPreferences with given [key].
  static double? getDouble(String key) {
    debugPrint('SharedPrefHelper : getDouble with key : $key');
    return getIt.get<SharedPreferences>().getDouble(key);
  }

  /// Gets an int value from SharedPreferences with given [key].
  static int? getInt(String key) {
    debugPrint('SharedPrefHelper : getInt with key : $key');
    return getIt.get<SharedPreferences>().getInt(key);
  }

  /// Gets an String value from SharedPreferences with given [key].
  static String? getString(String key) {
    debugPrint('SharedPrefHelper : getString with key : $key');
    return getIt.get<SharedPreferences>().getString(key);
  }
}
