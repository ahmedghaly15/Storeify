import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_ify/core/utils/app_strings.dart';

part 'locale_state.freezed.dart';

enum LocaleStateStatus {
  initial,
  changeLocaleLocally,
  changeApiLocaleSuccess,
  changeApiLocaleFailure
}

@freezed
class LocaleState<T> with _$LocaleState<T> {
  const factory LocaleState({
    required LocaleStateStatus status,
    @Default(Locale(AppStrings.englishLangCode)) Locale locale,
    String? error,
  }) = _LocaleState;

  factory LocaleState.initial() => const LocaleState(
        status: LocaleStateStatus.initial,
      );
}
