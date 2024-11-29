// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchFavoritesState {
  FetchFavoritesStatus get status => throw _privateConstructorUsedError;
  FetchFavoriteProductsResponse? get favProducts =>
      throw _privateConstructorUsedError;
  FetchFavStoresResponse? get favStores => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get selectedFavCategory => throw _privateConstructorUsedError;

  /// Create a copy of FetchFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchFavoritesStateCopyWith<FetchFavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchFavoritesStateCopyWith<$Res> {
  factory $FetchFavoritesStateCopyWith(
          FetchFavoritesState value, $Res Function(FetchFavoritesState) then) =
      _$FetchFavoritesStateCopyWithImpl<$Res, FetchFavoritesState>;
  @useResult
  $Res call(
      {FetchFavoritesStatus status,
      FetchFavoriteProductsResponse? favProducts,
      FetchFavStoresResponse? favStores,
      String? error,
      int selectedFavCategory});
}

/// @nodoc
class _$FetchFavoritesStateCopyWithImpl<$Res, $Val extends FetchFavoritesState>
    implements $FetchFavoritesStateCopyWith<$Res> {
  _$FetchFavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favProducts = freezed,
    Object? favStores = freezed,
    Object? error = freezed,
    Object? selectedFavCategory = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchFavoritesStatus,
      favProducts: freezed == favProducts
          ? _value.favProducts
          : favProducts // ignore: cast_nullable_to_non_nullable
              as FetchFavoriteProductsResponse?,
      favStores: freezed == favStores
          ? _value.favStores
          : favStores // ignore: cast_nullable_to_non_nullable
              as FetchFavStoresResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFavCategory: null == selectedFavCategory
          ? _value.selectedFavCategory
          : selectedFavCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchFavoritesStateImplCopyWith<$Res>
    implements $FetchFavoritesStateCopyWith<$Res> {
  factory _$$FetchFavoritesStateImplCopyWith(_$FetchFavoritesStateImpl value,
          $Res Function(_$FetchFavoritesStateImpl) then) =
      __$$FetchFavoritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FetchFavoritesStatus status,
      FetchFavoriteProductsResponse? favProducts,
      FetchFavStoresResponse? favStores,
      String? error,
      int selectedFavCategory});
}

/// @nodoc
class __$$FetchFavoritesStateImplCopyWithImpl<$Res>
    extends _$FetchFavoritesStateCopyWithImpl<$Res, _$FetchFavoritesStateImpl>
    implements _$$FetchFavoritesStateImplCopyWith<$Res> {
  __$$FetchFavoritesStateImplCopyWithImpl(_$FetchFavoritesStateImpl _value,
      $Res Function(_$FetchFavoritesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favProducts = freezed,
    Object? favStores = freezed,
    Object? error = freezed,
    Object? selectedFavCategory = null,
  }) {
    return _then(_$FetchFavoritesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchFavoritesStatus,
      favProducts: freezed == favProducts
          ? _value.favProducts
          : favProducts // ignore: cast_nullable_to_non_nullable
              as FetchFavoriteProductsResponse?,
      favStores: freezed == favStores
          ? _value.favStores
          : favStores // ignore: cast_nullable_to_non_nullable
              as FetchFavStoresResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFavCategory: null == selectedFavCategory
          ? _value.selectedFavCategory
          : selectedFavCategory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchFavoritesStateImpl implements _FetchFavoritesState {
  const _$FetchFavoritesStateImpl(
      {required this.status,
      this.favProducts,
      this.favStores,
      this.error,
      this.selectedFavCategory = 0});

  @override
  final FetchFavoritesStatus status;
  @override
  final FetchFavoriteProductsResponse? favProducts;
  @override
  final FetchFavStoresResponse? favStores;
  @override
  final String? error;
  @override
  @JsonKey()
  final int selectedFavCategory;

  @override
  String toString() {
    return 'FetchFavoritesState(status: $status, favProducts: $favProducts, favStores: $favStores, error: $error, selectedFavCategory: $selectedFavCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFavoritesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.favProducts, favProducts) ||
                other.favProducts == favProducts) &&
            (identical(other.favStores, favStores) ||
                other.favStores == favStores) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedFavCategory, selectedFavCategory) ||
                other.selectedFavCategory == selectedFavCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, favProducts, favStores, error, selectedFavCategory);

  /// Create a copy of FetchFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFavoritesStateImplCopyWith<_$FetchFavoritesStateImpl> get copyWith =>
      __$$FetchFavoritesStateImplCopyWithImpl<_$FetchFavoritesStateImpl>(
          this, _$identity);
}

abstract class _FetchFavoritesState implements FetchFavoritesState {
  const factory _FetchFavoritesState(
      {required final FetchFavoritesStatus status,
      final FetchFavoriteProductsResponse? favProducts,
      final FetchFavStoresResponse? favStores,
      final String? error,
      final int selectedFavCategory}) = _$FetchFavoritesStateImpl;

  @override
  FetchFavoritesStatus get status;
  @override
  FetchFavoriteProductsResponse? get favProducts;
  @override
  FetchFavStoresResponse? get favStores;
  @override
  String? get error;
  @override
  int get selectedFavCategory;

  /// Create a copy of FetchFavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchFavoritesStateImplCopyWith<_$FetchFavoritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
