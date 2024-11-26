// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  HomeStateStatus get status => throw _privateConstructorUsedError;
  FetchHomeResponse? get homeData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<T, HomeState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
  @useResult
  $Res call(
      {HomeStateStatus status, FetchHomeResponse? homeData, String? error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? homeData = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStateStatus,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as FetchHomeResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<T, $Res>
    implements $HomeStateCopyWith<T, $Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl<T> value, $Res Function(_$HomeStateImpl<T>) then) =
      __$$HomeStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {HomeStateStatus status, FetchHomeResponse? homeData, String? error});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeStateImpl<T>>
    implements _$$HomeStateImplCopyWith<T, $Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl<T> _value, $Res Function(_$HomeStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? homeData = freezed,
    Object? error = freezed,
  }) {
    return _then(_$HomeStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStateStatus,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as FetchHomeResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl<T> implements _HomeState<T> {
  const _$HomeStateImpl({required this.status, this.homeData, this.error});

  @override
  final HomeStateStatus status;
  @override
  final FetchHomeResponse? homeData;
  @override
  final String? error;

  @override
  String toString() {
    return 'HomeState<$T>(status: $status, homeData: $homeData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, homeData, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<T, _$HomeStateImpl<T>> get copyWith =>
      __$$HomeStateImplCopyWithImpl<T, _$HomeStateImpl<T>>(this, _$identity);
}

abstract class _HomeState<T> implements HomeState<T> {
  const factory _HomeState(
      {required final HomeStateStatus status,
      final FetchHomeResponse? homeData,
      final String? error}) = _$HomeStateImpl<T>;

  @override
  HomeStateStatus get status;
  @override
  FetchHomeResponse? get homeData;
  @override
  String? get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<T, _$HomeStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
