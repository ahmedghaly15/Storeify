import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/themes/app_themes.dart';

class ThemingCubit extends Cubit<ThemeData> {
  ThemingCubit() : super(AppThemes.lightMode) {
    _retrieveCachedTheme();
  }

  Future<void> _cacheSelectedTheme(Brightness brightness) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    debugPrint('THEME INDEX: $themeIndex');
    await SharedPrefHelper.setData(SharedPrefKeys.appTheme, themeIndex);
  }

  Future<void> _retrieveCachedTheme() async {
    final cachedThemeIndex =
        await SharedPrefHelper.getInt(SharedPrefKeys.appTheme) ?? 0;
    final savedTheme =
        cachedThemeIndex == 0 ? AppThemes.lightMode : AppThemes.darkMode;
    emit(savedTheme);
  }

  void toggleTheme() {
    emit(state.brightness == Brightness.light
        ? AppThemes.darkMode
        : AppThemes.lightMode);
    debugPrint('STATE: ${state.brightness.toString()}');
    _cacheSelectedTheme(state.brightness);
  }
}
