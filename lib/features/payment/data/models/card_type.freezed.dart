// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardType {
  String get image => throw _privateConstructorUsedError;
  String get nameKey => throw _privateConstructorUsedError;

  /// Create a copy of CardType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardTypeCopyWith<CardType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardTypeCopyWith<$Res> {
  factory $CardTypeCopyWith(CardType value, $Res Function(CardType) then) =
      _$CardTypeCopyWithImpl<$Res, CardType>;
  @useResult
  $Res call({String image, String nameKey});
}

/// @nodoc
class _$CardTypeCopyWithImpl<$Res, $Val extends CardType>
    implements $CardTypeCopyWith<$Res> {
  _$CardTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? nameKey = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      nameKey: null == nameKey
          ? _value.nameKey
          : nameKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardTypeImplCopyWith<$Res>
    implements $CardTypeCopyWith<$Res> {
  factory _$$CardTypeImplCopyWith(
          _$CardTypeImpl value, $Res Function(_$CardTypeImpl) then) =
      __$$CardTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String nameKey});
}

/// @nodoc
class __$$CardTypeImplCopyWithImpl<$Res>
    extends _$CardTypeCopyWithImpl<$Res, _$CardTypeImpl>
    implements _$$CardTypeImplCopyWith<$Res> {
  __$$CardTypeImplCopyWithImpl(
      _$CardTypeImpl _value, $Res Function(_$CardTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? nameKey = null,
  }) {
    return _then(_$CardTypeImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      nameKey: null == nameKey
          ? _value.nameKey
          : nameKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardTypeImpl implements _CardType {
  const _$CardTypeImpl({required this.image, required this.nameKey});

  @override
  final String image;
  @override
  final String nameKey;

  @override
  String toString() {
    return 'CardType(image: $image, nameKey: $nameKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardTypeImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.nameKey, nameKey) || other.nameKey == nameKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, nameKey);

  /// Create a copy of CardType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardTypeImplCopyWith<_$CardTypeImpl> get copyWith =>
      __$$CardTypeImplCopyWithImpl<_$CardTypeImpl>(this, _$identity);
}

abstract class _CardType implements CardType {
  const factory _CardType(
      {required final String image,
      required final String nameKey}) = _$CardTypeImpl;

  @override
  String get image;
  @override
  String get nameKey;

  /// Create a copy of CardType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardTypeImplCopyWith<_$CardTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}