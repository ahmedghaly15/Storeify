// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocaleState<T> {
  LocaleSateStatus get status => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of LocaleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocaleStateCopyWith<T, LocaleState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<T, $Res> {
  factory $LocaleStateCopyWith(
          LocaleState<T> value, $Res Function(LocaleState<T>) then) =
      _$LocaleStateCopyWithImpl<T, $Res, LocaleState<T>>;
  @useResult
  $Res call({LocaleSateStatus status, Locale locale, String? error});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<T, $Res, $Val extends LocaleState<T>>
    implements $LocaleStateCopyWith<T, $Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocaleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocaleSateStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocaleStateImplCopyWith<T, $Res>
    implements $LocaleStateCopyWith<T, $Res> {
  factory _$$LocaleStateImplCopyWith(_$LocaleStateImpl<T> value,
          $Res Function(_$LocaleStateImpl<T>) then) =
      __$$LocaleStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({LocaleSateStatus status, Locale locale, String? error});
}

/// @nodoc
class __$$LocaleStateImplCopyWithImpl<T, $Res>
    extends _$LocaleStateCopyWithImpl<T, $Res, _$LocaleStateImpl<T>>
    implements _$$LocaleStateImplCopyWith<T, $Res> {
  __$$LocaleStateImplCopyWithImpl(
      _$LocaleStateImpl<T> _value, $Res Function(_$LocaleStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LocaleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? error = freezed,
  }) {
    return _then(_$LocaleStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocaleSateStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocaleStateImpl<T> implements _LocaleState<T> {
  const _$LocaleStateImpl(
      {required this.status,
      this.locale = const Locale(AppStrings.englishLangCode),
      this.error});

  @override
  final LocaleSateStatus status;
  @override
  @JsonKey()
  final Locale locale;
  @override
  final String? error;

  @override
  String toString() {
    return 'LocaleState<$T>(status: $status, locale: $locale, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, locale, error);

  /// Create a copy of LocaleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleStateImplCopyWith<T, _$LocaleStateImpl<T>> get copyWith =>
      __$$LocaleStateImplCopyWithImpl<T, _$LocaleStateImpl<T>>(
          this, _$identity);
}

abstract class _LocaleState<T> implements LocaleState<T> {
  const factory _LocaleState(
      {required final LocaleSateStatus status,
      final Locale locale,
      final String? error}) = _$LocaleStateImpl<T>;

  @override
  LocaleSateStatus get status;
  @override
  Locale get locale;
  @override
  String? get error;

  /// Create a copy of LocaleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocaleStateImplCopyWith<T, _$LocaleStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
