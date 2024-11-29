// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_and_theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesAndThemeState {
  FavoritesAndThemeStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  ThemeData? get theme => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesAndThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesAndThemeStateCopyWith<FavoritesAndThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesAndThemeStateCopyWith<$Res> {
  factory $FavoritesAndThemeStateCopyWith(FavoritesAndThemeState value,
          $Res Function(FavoritesAndThemeState) then) =
      _$FavoritesAndThemeStateCopyWithImpl<$Res, FavoritesAndThemeState>;
  @useResult
  $Res call({FavoritesAndThemeStatus status, String? error, ThemeData? theme});
}

/// @nodoc
class _$FavoritesAndThemeStateCopyWithImpl<$Res,
        $Val extends FavoritesAndThemeState>
    implements $FavoritesAndThemeStateCopyWith<$Res> {
  _$FavoritesAndThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesAndThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoritesAndThemeStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesAndThemeStateImplCopyWith<$Res>
    implements $FavoritesAndThemeStateCopyWith<$Res> {
  factory _$$FavoritesAndThemeStateImplCopyWith(
          _$FavoritesAndThemeStateImpl value,
          $Res Function(_$FavoritesAndThemeStateImpl) then) =
      __$$FavoritesAndThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoritesAndThemeStatus status, String? error, ThemeData? theme});
}

/// @nodoc
class __$$FavoritesAndThemeStateImplCopyWithImpl<$Res>
    extends _$FavoritesAndThemeStateCopyWithImpl<$Res,
        _$FavoritesAndThemeStateImpl>
    implements _$$FavoritesAndThemeStateImplCopyWith<$Res> {
  __$$FavoritesAndThemeStateImplCopyWithImpl(
      _$FavoritesAndThemeStateImpl _value,
      $Res Function(_$FavoritesAndThemeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesAndThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? theme = freezed,
  }) {
    return _then(_$FavoritesAndThemeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoritesAndThemeStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$FavoritesAndThemeStateImpl implements _FavoritesAndThemeState {
  const _$FavoritesAndThemeStateImpl(
      {required this.status, this.error, this.theme});

  @override
  final FavoritesAndThemeStatus status;
  @override
  final String? error;
  @override
  final ThemeData? theme;

  @override
  String toString() {
    return 'FavoritesAndThemeState(status: $status, error: $error, theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesAndThemeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error, theme);

  /// Create a copy of FavoritesAndThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesAndThemeStateImplCopyWith<_$FavoritesAndThemeStateImpl>
      get copyWith => __$$FavoritesAndThemeStateImplCopyWithImpl<
          _$FavoritesAndThemeStateImpl>(this, _$identity);
}

abstract class _FavoritesAndThemeState implements FavoritesAndThemeState {
  const factory _FavoritesAndThemeState(
      {required final FavoritesAndThemeStatus status,
      final String? error,
      final ThemeData? theme}) = _$FavoritesAndThemeStateImpl;

  @override
  FavoritesAndThemeStatus get status;
  @override
  String? get error;
  @override
  ThemeData? get theme;

  /// Create a copy of FavoritesAndThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesAndThemeStateImplCopyWith<_$FavoritesAndThemeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
