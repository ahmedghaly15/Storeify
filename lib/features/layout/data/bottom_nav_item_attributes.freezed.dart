// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_item_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavItemAttributes {
  int get index => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  String get labelKey => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavItemAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavItemAttributesCopyWith<BottomNavItemAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavItemAttributesCopyWith<$Res> {
  factory $BottomNavItemAttributesCopyWith(BottomNavItemAttributes value,
          $Res Function(BottomNavItemAttributes) then) =
      _$BottomNavItemAttributesCopyWithImpl<$Res, BottomNavItemAttributes>;
  @useResult
  $Res call({int index, IconData icon, String labelKey, Color color});
}

/// @nodoc
class _$BottomNavItemAttributesCopyWithImpl<$Res,
        $Val extends BottomNavItemAttributes>
    implements $BottomNavItemAttributesCopyWith<$Res> {
  _$BottomNavItemAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavItemAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? icon = null,
    Object? labelKey = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      labelKey: null == labelKey
          ? _value.labelKey
          : labelKey // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomNavItemAttributesImplCopyWith<$Res>
    implements $BottomNavItemAttributesCopyWith<$Res> {
  factory _$$BottomNavItemAttributesImplCopyWith(
          _$BottomNavItemAttributesImpl value,
          $Res Function(_$BottomNavItemAttributesImpl) then) =
      __$$BottomNavItemAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, IconData icon, String labelKey, Color color});
}

/// @nodoc
class __$$BottomNavItemAttributesImplCopyWithImpl<$Res>
    extends _$BottomNavItemAttributesCopyWithImpl<$Res,
        _$BottomNavItemAttributesImpl>
    implements _$$BottomNavItemAttributesImplCopyWith<$Res> {
  __$$BottomNavItemAttributesImplCopyWithImpl(
      _$BottomNavItemAttributesImpl _value,
      $Res Function(_$BottomNavItemAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavItemAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? icon = null,
    Object? labelKey = null,
    Object? color = null,
  }) {
    return _then(_$BottomNavItemAttributesImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      labelKey: null == labelKey
          ? _value.labelKey
          : labelKey // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$BottomNavItemAttributesImpl implements _BottomNavItemAttributes {
  const _$BottomNavItemAttributesImpl(
      {required this.index,
      required this.icon,
      required this.labelKey,
      required this.color});

  @override
  final int index;
  @override
  final IconData icon;
  @override
  final String labelKey;
  @override
  final Color color;

  @override
  String toString() {
    return 'BottomNavItemAttributes(index: $index, icon: $icon, labelKey: $labelKey, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavItemAttributesImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.labelKey, labelKey) ||
                other.labelKey == labelKey) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, icon, labelKey, color);

  /// Create a copy of BottomNavItemAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavItemAttributesImplCopyWith<_$BottomNavItemAttributesImpl>
      get copyWith => __$$BottomNavItemAttributesImplCopyWithImpl<
          _$BottomNavItemAttributesImpl>(this, _$identity);
}

abstract class _BottomNavItemAttributes implements BottomNavItemAttributes {
  const factory _BottomNavItemAttributes(
      {required final int index,
      required final IconData icon,
      required final String labelKey,
      required final Color color}) = _$BottomNavItemAttributesImpl;

  @override
  int get index;
  @override
  IconData get icon;
  @override
  String get labelKey;
  @override
  Color get color;

  /// Create a copy of BottomNavItemAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomNavItemAttributesImplCopyWith<_$BottomNavItemAttributesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
