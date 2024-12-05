// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoresState {
  StoresStateStatus get status => throw _privateConstructorUsedError;
  FetchStoresResponse? get stores => throw _privateConstructorUsedError;
  FetchStoresResponse? get categoryStores => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get currentStoreIndex => throw _privateConstructorUsedError;

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoresStateCopyWith<StoresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresStateCopyWith<$Res> {
  factory $StoresStateCopyWith(
          StoresState value, $Res Function(StoresState) then) =
      _$StoresStateCopyWithImpl<$Res, StoresState>;
  @useResult
  $Res call(
      {StoresStateStatus status,
      FetchStoresResponse? stores,
      FetchStoresResponse? categoryStores,
      String? error,
      int currentStoreIndex});
}

/// @nodoc
class _$StoresStateCopyWithImpl<$Res, $Val extends StoresState>
    implements $StoresStateCopyWith<$Res> {
  _$StoresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stores = freezed,
    Object? categoryStores = freezed,
    Object? error = freezed,
    Object? currentStoreIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoresStateStatus,
      stores: freezed == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as FetchStoresResponse?,
      categoryStores: freezed == categoryStores
          ? _value.categoryStores
          : categoryStores // ignore: cast_nullable_to_non_nullable
              as FetchStoresResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStoreIndex: null == currentStoreIndex
          ? _value.currentStoreIndex
          : currentStoreIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoresStateImplCopyWith<$Res>
    implements $StoresStateCopyWith<$Res> {
  factory _$$StoresStateImplCopyWith(
          _$StoresStateImpl value, $Res Function(_$StoresStateImpl) then) =
      __$$StoresStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StoresStateStatus status,
      FetchStoresResponse? stores,
      FetchStoresResponse? categoryStores,
      String? error,
      int currentStoreIndex});
}

/// @nodoc
class __$$StoresStateImplCopyWithImpl<$Res>
    extends _$StoresStateCopyWithImpl<$Res, _$StoresStateImpl>
    implements _$$StoresStateImplCopyWith<$Res> {
  __$$StoresStateImplCopyWithImpl(
      _$StoresStateImpl _value, $Res Function(_$StoresStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stores = freezed,
    Object? categoryStores = freezed,
    Object? error = freezed,
    Object? currentStoreIndex = null,
  }) {
    return _then(_$StoresStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoresStateStatus,
      stores: freezed == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as FetchStoresResponse?,
      categoryStores: freezed == categoryStores
          ? _value.categoryStores
          : categoryStores // ignore: cast_nullable_to_non_nullable
              as FetchStoresResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStoreIndex: null == currentStoreIndex
          ? _value.currentStoreIndex
          : currentStoreIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StoresStateImpl implements _StoresState {
  const _$StoresStateImpl(
      {required this.status,
      this.stores,
      this.categoryStores,
      this.error,
      this.currentStoreIndex = 0});

  @override
  final StoresStateStatus status;
  @override
  final FetchStoresResponse? stores;
  @override
  final FetchStoresResponse? categoryStores;
  @override
  final String? error;
  @override
  @JsonKey()
  final int currentStoreIndex;

  @override
  String toString() {
    return 'StoresState(status: $status, stores: $stores, categoryStores: $categoryStores, error: $error, currentStoreIndex: $currentStoreIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stores, stores) || other.stores == stores) &&
            (identical(other.categoryStores, categoryStores) ||
                other.categoryStores == categoryStores) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.currentStoreIndex, currentStoreIndex) ||
                other.currentStoreIndex == currentStoreIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, stores, categoryStores, error, currentStoreIndex);

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresStateImplCopyWith<_$StoresStateImpl> get copyWith =>
      __$$StoresStateImplCopyWithImpl<_$StoresStateImpl>(this, _$identity);
}

abstract class _StoresState implements StoresState {
  const factory _StoresState(
      {required final StoresStateStatus status,
      final FetchStoresResponse? stores,
      final FetchStoresResponse? categoryStores,
      final String? error,
      final int currentStoreIndex}) = _$StoresStateImpl;

  @override
  StoresStateStatus get status;
  @override
  FetchStoresResponse? get stores;
  @override
  FetchStoresResponse? get categoryStores;
  @override
  String? get error;
  @override
  int get currentStoreIndex;

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoresStateImplCopyWith<_$StoresStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
