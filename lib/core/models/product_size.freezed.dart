// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductSize _$ProductSizeFromJson(Map<String, dynamic> json) {
  return _ProductSize.fromJson(json);
}

/// @nodoc
mixin _$ProductSize {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get size => throw _privateConstructorUsedError;

  /// Serializes this ProductSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSizeCopyWith<ProductSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSizeCopyWith<$Res> {
  factory $ProductSizeCopyWith(
          ProductSize value, $Res Function(ProductSize) then) =
      _$ProductSizeCopyWithImpl<$Res, ProductSize>;
  @useResult
  $Res call({@HiveField(0) int id, @HiveField(1) String size});
}

/// @nodoc
class _$ProductSizeCopyWithImpl<$Res, $Val extends ProductSize>
    implements $ProductSizeCopyWith<$Res> {
  _$ProductSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSizeImplCopyWith<$Res>
    implements $ProductSizeCopyWith<$Res> {
  factory _$$ProductSizeImplCopyWith(
          _$ProductSizeImpl value, $Res Function(_$ProductSizeImpl) then) =
      __$$ProductSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int id, @HiveField(1) String size});
}

/// @nodoc
class __$$ProductSizeImplCopyWithImpl<$Res>
    extends _$ProductSizeCopyWithImpl<$Res, _$ProductSizeImpl>
    implements _$$ProductSizeImplCopyWith<$Res> {
  __$$ProductSizeImplCopyWithImpl(
      _$ProductSizeImpl _value, $Res Function(_$ProductSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
  }) {
    return _then(_$ProductSizeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ProductSizeImpl implements _ProductSize {
  const _$ProductSizeImpl(
      {@HiveField(0) required this.id, @HiveField(1) required this.size});

  factory _$ProductSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSizeImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String size;

  @override
  String toString() {
    return 'ProductSize(id: $id, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, size);

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSizeImplCopyWith<_$ProductSizeImpl> get copyWith =>
      __$$ProductSizeImplCopyWithImpl<_$ProductSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSizeImplToJson(
      this,
    );
  }
}

abstract class _ProductSize implements ProductSize {
  const factory _ProductSize(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String size}) = _$ProductSizeImpl;

  factory _ProductSize.fromJson(Map<String, dynamic> json) =
      _$ProductSizeImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get size;

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSizeImplCopyWith<_$ProductSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
