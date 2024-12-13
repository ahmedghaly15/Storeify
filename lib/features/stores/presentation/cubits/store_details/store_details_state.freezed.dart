// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreDetailsState {
  StoreDetailsStateStatus get status => throw _privateConstructorUsedError;
  FetchStoreBranchesResponse? get storeBranches =>
      throw _privateConstructorUsedError;
  FetchStoreCategoriesResponse? get storeCategories =>
      throw _privateConstructorUsedError;
  FetchStoreOffersResponse? get storeOffers =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get selectedDetailIndex => throw _privateConstructorUsedError;

  /// Create a copy of StoreDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreDetailsStateCopyWith<StoreDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailsStateCopyWith<$Res> {
  factory $StoreDetailsStateCopyWith(
          StoreDetailsState value, $Res Function(StoreDetailsState) then) =
      _$StoreDetailsStateCopyWithImpl<$Res, StoreDetailsState>;
  @useResult
  $Res call(
      {StoreDetailsStateStatus status,
      FetchStoreBranchesResponse? storeBranches,
      FetchStoreCategoriesResponse? storeCategories,
      FetchStoreOffersResponse? storeOffers,
      String? error,
      int selectedDetailIndex});
}

/// @nodoc
class _$StoreDetailsStateCopyWithImpl<$Res, $Val extends StoreDetailsState>
    implements $StoreDetailsStateCopyWith<$Res> {
  _$StoreDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? storeBranches = freezed,
    Object? storeCategories = freezed,
    Object? storeOffers = freezed,
    Object? error = freezed,
    Object? selectedDetailIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoreDetailsStateStatus,
      storeBranches: freezed == storeBranches
          ? _value.storeBranches
          : storeBranches // ignore: cast_nullable_to_non_nullable
              as FetchStoreBranchesResponse?,
      storeCategories: freezed == storeCategories
          ? _value.storeCategories
          : storeCategories // ignore: cast_nullable_to_non_nullable
              as FetchStoreCategoriesResponse?,
      storeOffers: freezed == storeOffers
          ? _value.storeOffers
          : storeOffers // ignore: cast_nullable_to_non_nullable
              as FetchStoreOffersResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDetailIndex: null == selectedDetailIndex
          ? _value.selectedDetailIndex
          : selectedDetailIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDetailsStateImplCopyWith<$Res>
    implements $StoreDetailsStateCopyWith<$Res> {
  factory _$$StoreDetailsStateImplCopyWith(_$StoreDetailsStateImpl value,
          $Res Function(_$StoreDetailsStateImpl) then) =
      __$$StoreDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StoreDetailsStateStatus status,
      FetchStoreBranchesResponse? storeBranches,
      FetchStoreCategoriesResponse? storeCategories,
      FetchStoreOffersResponse? storeOffers,
      String? error,
      int selectedDetailIndex});
}

/// @nodoc
class __$$StoreDetailsStateImplCopyWithImpl<$Res>
    extends _$StoreDetailsStateCopyWithImpl<$Res, _$StoreDetailsStateImpl>
    implements _$$StoreDetailsStateImplCopyWith<$Res> {
  __$$StoreDetailsStateImplCopyWithImpl(_$StoreDetailsStateImpl _value,
      $Res Function(_$StoreDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? storeBranches = freezed,
    Object? storeCategories = freezed,
    Object? storeOffers = freezed,
    Object? error = freezed,
    Object? selectedDetailIndex = null,
  }) {
    return _then(_$StoreDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StoreDetailsStateStatus,
      storeBranches: freezed == storeBranches
          ? _value.storeBranches
          : storeBranches // ignore: cast_nullable_to_non_nullable
              as FetchStoreBranchesResponse?,
      storeCategories: freezed == storeCategories
          ? _value.storeCategories
          : storeCategories // ignore: cast_nullable_to_non_nullable
              as FetchStoreCategoriesResponse?,
      storeOffers: freezed == storeOffers
          ? _value.storeOffers
          : storeOffers // ignore: cast_nullable_to_non_nullable
              as FetchStoreOffersResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDetailIndex: null == selectedDetailIndex
          ? _value.selectedDetailIndex
          : selectedDetailIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StoreDetailsStateImpl implements _StoreDetailsState {
  const _$StoreDetailsStateImpl(
      {required this.status,
      this.storeBranches,
      this.storeCategories,
      this.storeOffers,
      this.error,
      this.selectedDetailIndex = 0});

  @override
  final StoreDetailsStateStatus status;
  @override
  final FetchStoreBranchesResponse? storeBranches;
  @override
  final FetchStoreCategoriesResponse? storeCategories;
  @override
  final FetchStoreOffersResponse? storeOffers;
  @override
  final String? error;
  @override
  @JsonKey()
  final int selectedDetailIndex;

  @override
  String toString() {
    return 'StoreDetailsState(status: $status, storeBranches: $storeBranches, storeCategories: $storeCategories, storeOffers: $storeOffers, error: $error, selectedDetailIndex: $selectedDetailIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.storeBranches, storeBranches) ||
                other.storeBranches == storeBranches) &&
            (identical(other.storeCategories, storeCategories) ||
                other.storeCategories == storeCategories) &&
            (identical(other.storeOffers, storeOffers) ||
                other.storeOffers == storeOffers) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedDetailIndex, selectedDetailIndex) ||
                other.selectedDetailIndex == selectedDetailIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, storeBranches,
      storeCategories, storeOffers, error, selectedDetailIndex);

  /// Create a copy of StoreDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDetailsStateImplCopyWith<_$StoreDetailsStateImpl> get copyWith =>
      __$$StoreDetailsStateImplCopyWithImpl<_$StoreDetailsStateImpl>(
          this, _$identity);
}

abstract class _StoreDetailsState implements StoreDetailsState {
  const factory _StoreDetailsState(
      {required final StoreDetailsStateStatus status,
      final FetchStoreBranchesResponse? storeBranches,
      final FetchStoreCategoriesResponse? storeCategories,
      final FetchStoreOffersResponse? storeOffers,
      final String? error,
      final int selectedDetailIndex}) = _$StoreDetailsStateImpl;

  @override
  StoreDetailsStateStatus get status;
  @override
  FetchStoreBranchesResponse? get storeBranches;
  @override
  FetchStoreCategoriesResponse? get storeCategories;
  @override
  FetchStoreOffersResponse? get storeOffers;
  @override
  String? get error;
  @override
  int get selectedDetailIndex;

  /// Create a copy of StoreDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreDetailsStateImplCopyWith<_$StoreDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
