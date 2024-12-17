// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeneralState {
  GeneralStateStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  ThemeData? get theme => throw _privateConstructorUsedError;
  FetchHomeResponse? get homeData => throw _privateConstructorUsedError;
  int? get favAffectedItem => throw _privateConstructorUsedError;

  /// Create a copy of GeneralState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneralStateCopyWith<GeneralState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralStateCopyWith<$Res> {
  factory $GeneralStateCopyWith(
          GeneralState value, $Res Function(GeneralState) then) =
      _$GeneralStateCopyWithImpl<$Res, GeneralState>;
  @useResult
  $Res call(
      {GeneralStateStatus status,
      String? error,
      ThemeData? theme,
      FetchHomeResponse? homeData,
      int? favAffectedItem});
}

/// @nodoc
class _$GeneralStateCopyWithImpl<$Res, $Val extends GeneralState>
    implements $GeneralStateCopyWith<$Res> {
  _$GeneralStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneralState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? theme = freezed,
    Object? homeData = freezed,
    Object? favAffectedItem = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeneralStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as FetchHomeResponse?,
      favAffectedItem: freezed == favAffectedItem
          ? _value.favAffectedItem
          : favAffectedItem // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralStateImplCopyWith<$Res>
    implements $GeneralStateCopyWith<$Res> {
  factory _$$GeneralStateImplCopyWith(
          _$GeneralStateImpl value, $Res Function(_$GeneralStateImpl) then) =
      __$$GeneralStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GeneralStateStatus status,
      String? error,
      ThemeData? theme,
      FetchHomeResponse? homeData,
      int? favAffectedItem});
}

/// @nodoc
class __$$GeneralStateImplCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$GeneralStateImpl>
    implements _$$GeneralStateImplCopyWith<$Res> {
  __$$GeneralStateImplCopyWithImpl(
      _$GeneralStateImpl _value, $Res Function(_$GeneralStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneralState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? theme = freezed,
    Object? homeData = freezed,
    Object? favAffectedItem = freezed,
  }) {
    return _then(_$GeneralStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeneralStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as FetchHomeResponse?,
      favAffectedItem: freezed == favAffectedItem
          ? _value.favAffectedItem
          : favAffectedItem // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GeneralStateImpl implements _GeneralState {
  const _$GeneralStateImpl(
      {required this.status,
      this.error,
      this.theme,
      this.homeData,
      this.favAffectedItem});

  @override
  final GeneralStateStatus status;
  @override
  final String? error;
  @override
  final ThemeData? theme;
  @override
  final FetchHomeResponse? homeData;
  @override
  final int? favAffectedItem;

  @override
  String toString() {
    return 'GeneralState(status: $status, error: $error, theme: $theme, homeData: $homeData, favAffectedItem: $favAffectedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData) &&
            (identical(other.favAffectedItem, favAffectedItem) ||
                other.favAffectedItem == favAffectedItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, error, theme, homeData, favAffectedItem);

  /// Create a copy of GeneralState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralStateImplCopyWith<_$GeneralStateImpl> get copyWith =>
      __$$GeneralStateImplCopyWithImpl<_$GeneralStateImpl>(this, _$identity);
}

abstract class _GeneralState implements GeneralState {
  const factory _GeneralState(
      {required final GeneralStateStatus status,
      final String? error,
      final ThemeData? theme,
      final FetchHomeResponse? homeData,
      final int? favAffectedItem}) = _$GeneralStateImpl;

  @override
  GeneralStateStatus get status;
  @override
  String? get error;
  @override
  ThemeData? get theme;
  @override
  FetchHomeResponse? get homeData;
  @override
  int? get favAffectedItem;

  /// Create a copy of GeneralState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralStateImplCopyWith<_$GeneralStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
