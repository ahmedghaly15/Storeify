// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsState {
  ProductDetailsStateStatus get status => throw _privateConstructorUsedError;
  ProductSize? get selectedProductSize => throw _privateConstructorUsedError;
  ProductColor? get selectedProductColor => throw _privateConstructorUsedError;
  int get productQuantity => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsStateCopyWith<ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res, ProductDetailsState>;
  @useResult
  $Res call(
      {ProductDetailsStateStatus status,
      ProductSize? selectedProductSize,
      ProductColor? selectedProductColor,
      int productQuantity,
      String? error});
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res, $Val extends ProductDetailsState>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedProductSize = freezed,
    Object? selectedProductColor = freezed,
    Object? productQuantity = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductDetailsStateStatus,
      selectedProductSize: freezed == selectedProductSize
          ? _value.selectedProductSize
          : selectedProductSize // ignore: cast_nullable_to_non_nullable
              as ProductSize?,
      selectedProductColor: freezed == selectedProductColor
          ? _value.selectedProductColor
          : selectedProductColor // ignore: cast_nullable_to_non_nullable
              as ProductColor?,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailsStateImplCopyWith<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  factory _$$ProductDetailsStateImplCopyWith(_$ProductDetailsStateImpl value,
          $Res Function(_$ProductDetailsStateImpl) then) =
      __$$ProductDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDetailsStateStatus status,
      ProductSize? selectedProductSize,
      ProductColor? selectedProductColor,
      int productQuantity,
      String? error});
}

/// @nodoc
class __$$ProductDetailsStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsStateImpl>
    implements _$$ProductDetailsStateImplCopyWith<$Res> {
  __$$ProductDetailsStateImplCopyWithImpl(_$ProductDetailsStateImpl _value,
      $Res Function(_$ProductDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedProductSize = freezed,
    Object? selectedProductColor = freezed,
    Object? productQuantity = null,
    Object? error = freezed,
  }) {
    return _then(_$ProductDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductDetailsStateStatus,
      selectedProductSize: freezed == selectedProductSize
          ? _value.selectedProductSize
          : selectedProductSize // ignore: cast_nullable_to_non_nullable
              as ProductSize?,
      selectedProductColor: freezed == selectedProductColor
          ? _value.selectedProductColor
          : selectedProductColor // ignore: cast_nullable_to_non_nullable
              as ProductColor?,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsStateImpl implements _ProductDetailsState {
  const _$ProductDetailsStateImpl(
      {required this.status,
      this.selectedProductSize,
      this.selectedProductColor,
      this.productQuantity = 1,
      this.error});

  @override
  final ProductDetailsStateStatus status;
  @override
  final ProductSize? selectedProductSize;
  @override
  final ProductColor? selectedProductColor;
  @override
  @JsonKey()
  final int productQuantity;
  @override
  final String? error;

  @override
  String toString() {
    return 'ProductDetailsState(status: $status, selectedProductSize: $selectedProductSize, selectedProductColor: $selectedProductColor, productQuantity: $productQuantity, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedProductSize, selectedProductSize) ||
                other.selectedProductSize == selectedProductSize) &&
            (identical(other.selectedProductColor, selectedProductColor) ||
                other.selectedProductColor == selectedProductColor) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedProductSize,
      selectedProductColor, productQuantity, error);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      __$$ProductDetailsStateImplCopyWithImpl<_$ProductDetailsStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailsState implements ProductDetailsState {
  const factory _ProductDetailsState(
      {required final ProductDetailsStateStatus status,
      final ProductSize? selectedProductSize,
      final ProductColor? selectedProductColor,
      final int productQuantity,
      final String? error}) = _$ProductDetailsStateImpl;

  @override
  ProductDetailsStateStatus get status;
  @override
  ProductSize? get selectedProductSize;
  @override
  ProductColor? get selectedProductColor;
  @override
  int get productQuantity;
  @override
  String? get error;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
