// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductColor _$ProductColorFromJson(Map<String, dynamic> json) {
  return _ProductColor.fromJson(json);
}

/// @nodoc
mixin _$ProductColor {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get color => throw _privateConstructorUsedError;

  /// Serializes this ProductColor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductColorCopyWith<ProductColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductColorCopyWith<$Res> {
  factory $ProductColorCopyWith(
          ProductColor value, $Res Function(ProductColor) then) =
      _$ProductColorCopyWithImpl<$Res, ProductColor>;
  @useResult
  $Res call({@HiveField(0) int id, @HiveField(1) String color});
}

/// @nodoc
class _$ProductColorCopyWithImpl<$Res, $Val extends ProductColor>
    implements $ProductColorCopyWith<$Res> {
  _$ProductColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductColorImplCopyWith<$Res>
    implements $ProductColorCopyWith<$Res> {
  factory _$$ProductColorImplCopyWith(
          _$ProductColorImpl value, $Res Function(_$ProductColorImpl) then) =
      __$$ProductColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int id, @HiveField(1) String color});
}

/// @nodoc
class __$$ProductColorImplCopyWithImpl<$Res>
    extends _$ProductColorCopyWithImpl<$Res, _$ProductColorImpl>
    implements _$$ProductColorImplCopyWith<$Res> {
  __$$ProductColorImplCopyWithImpl(
      _$ProductColorImpl _value, $Res Function(_$ProductColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
  }) {
    return _then(_$ProductColorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ProductColorImpl implements _ProductColor {
  const _$ProductColorImpl(
      {@HiveField(0) required this.id, @HiveField(1) required this.color});

  factory _$ProductColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductColorImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String color;

  @override
  String toString() {
    return 'ProductColor(id: $id, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductColorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, color);

  /// Create a copy of ProductColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductColorImplCopyWith<_$ProductColorImpl> get copyWith =>
      __$$ProductColorImplCopyWithImpl<_$ProductColorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductColorImplToJson(
      this,
    );
  }
}

abstract class _ProductColor implements ProductColor {
  const factory _ProductColor(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String color}) = _$ProductColorImpl;

  factory _ProductColor.fromJson(Map<String, dynamic> json) =
      _$ProductColorImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get color;

  /// Create a copy of ProductColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductColorImplCopyWith<_$ProductColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
