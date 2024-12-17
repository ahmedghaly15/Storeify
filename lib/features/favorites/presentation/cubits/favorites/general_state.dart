import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/themes/app_themes.dart';
import 'package:store_ify/features/home/data/models/fetch_home_response.dart';

part 'general_state.freezed.dart';

enum GeneralStateStatus {
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
  fetchHomeDataLoading,
  fetchHomeDataSuccess,
  fetchHomeDataError,
}

@freezed
class GeneralState with _$GeneralState {
  const factory GeneralState({
    required GeneralStateStatus status,
    String? error,
    ThemeData? theme,
    FetchHomeResponse? homeData,
    int? favAffectedItem,
  }) = _GeneralState;

  factory GeneralState.initial() => GeneralState(
        status: GeneralStateStatus.initial,
        theme: AppThemes.lightMode,
      );
}
