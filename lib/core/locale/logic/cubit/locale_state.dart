import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_state.freezed.dart';

@freezed
class LocaleState<T> with _$LocaleState<T> {
  const factory LocaleState.initial(Locale locale) = _Initial<T>;
  const factory LocaleState.changeLocale(Locale locale) = _ChangeLocale<T>;
}
