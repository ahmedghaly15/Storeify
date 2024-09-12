// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingItem {
  String get titleKey => throw _privateConstructorUsedError;
  Widget get trailing => throw _privateConstructorUsedError;
  void Function()? get onTap => throw _privateConstructorUsedError;

  /// Create a copy of SettingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingItemCopyWith<SettingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingItemCopyWith<$Res> {
  factory $SettingItemCopyWith(
          SettingItem value, $Res Function(SettingItem) then) =
      _$SettingItemCopyWithImpl<$Res, SettingItem>;
  @useResult
  $Res call({String titleKey, Widget trailing, void Function()? onTap});
}

/// @nodoc
class _$SettingItemCopyWithImpl<$Res, $Val extends SettingItem>
    implements $SettingItemCopyWith<$Res> {
  _$SettingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleKey = null,
    Object? trailing = null,
    Object? onTap = freezed,
  }) {
    return _then(_value.copyWith(
      titleKey: null == titleKey
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      trailing: null == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Widget,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingItemImplCopyWith<$Res>
    implements $SettingItemCopyWith<$Res> {
  factory _$$SettingItemImplCopyWith(
          _$SettingItemImpl value, $Res Function(_$SettingItemImpl) then) =
      __$$SettingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String titleKey, Widget trailing, void Function()? onTap});
}

/// @nodoc
class __$$SettingItemImplCopyWithImpl<$Res>
    extends _$SettingItemCopyWithImpl<$Res, _$SettingItemImpl>
    implements _$$SettingItemImplCopyWith<$Res> {
  __$$SettingItemImplCopyWithImpl(
      _$SettingItemImpl _value, $Res Function(_$SettingItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleKey = null,
    Object? trailing = null,
    Object? onTap = freezed,
  }) {
    return _then(_$SettingItemImpl(
      titleKey: null == titleKey
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      trailing: null == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Widget,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$SettingItemImpl implements _SettingItem {
  const _$SettingItemImpl(
      {required this.titleKey,
      this.trailing = const Icon(Icons.arrow_forward_ios_rounded,
          color: Colors.white, size: 16.0),
      this.onTap});

  @override
  final String titleKey;
  @override
  @JsonKey()
  final Widget trailing;
  @override
  final void Function()? onTap;

  @override
  String toString() {
    return 'SettingItem(titleKey: $titleKey, trailing: $trailing, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingItemImpl &&
            (identical(other.titleKey, titleKey) ||
                other.titleKey == titleKey) &&
            (identical(other.trailing, trailing) ||
                other.trailing == trailing) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleKey, trailing, onTap);

  /// Create a copy of SettingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingItemImplCopyWith<_$SettingItemImpl> get copyWith =>
      __$$SettingItemImplCopyWithImpl<_$SettingItemImpl>(this, _$identity);
}

abstract class _SettingItem implements SettingItem {
  const factory _SettingItem(
      {required final String titleKey,
      final Widget trailing,
      final void Function()? onTap}) = _$SettingItemImpl;

  @override
  String get titleKey;
  @override
  Widget get trailing;
  @override
  void Function()? get onTap;

  /// Create a copy of SettingItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingItemImplCopyWith<_$SettingItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
