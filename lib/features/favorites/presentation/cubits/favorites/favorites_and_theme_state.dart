import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/themes/app_themes.dart';

part 'favorites_and_theme_state.freezed.dart';

enum FavoritesAndThemeStatus {
  initial,
  preferProductLoading,
  preferProductSuccess,
  preferProductError,
  removeProductFromFavsLoading,
  removeProductFromFavsSuccess,
  removeProductFromFavsError,
  preferStoreLoading,
  preferStoreSuccess,
  preferStoreError,
  removeStoreFromFavsLoading,
  removeStoreFromFavsSuccess,
  removeStoreFromFavsError,
  toggleTheme,
}

@freezed
class FavoritesAndThemeState with _$FavoritesAndThemeState {
  const factory FavoritesAndThemeState({
    required FavoritesAndThemeStatus status,
    String? error,
    ThemeData? theme,
  }) = _FavoritesAndThemeState;

  factory FavoritesAndThemeState.initial() => FavoritesAndThemeState(
        status: FavoritesAndThemeStatus.initial,
        theme: AppThemes.lightMode,
      );
}
