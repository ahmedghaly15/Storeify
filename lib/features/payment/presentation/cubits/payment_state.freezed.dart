// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  PaymentStateStatus get status => throw _privateConstructorUsedError;
  CardType? get selectedCardType => throw _privateConstructorUsedError;
  AutovalidateMode get autovalidateMode => throw _privateConstructorUsedError;
  bool get checkboxValue => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {PaymentStateStatus status,
      CardType? selectedCardType,
      AutovalidateMode autovalidateMode,
      bool checkboxValue,
      String? error});

  $CardTypeCopyWith<$Res>? get selectedCardType;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedCardType = freezed,
    Object? autovalidateMode = null,
    Object? checkboxValue = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStateStatus,
      selectedCardType: freezed == selectedCardType
          ? _value.selectedCardType
          : selectedCardType // ignore: cast_nullable_to_non_nullable
              as CardType?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      checkboxValue: null == checkboxValue
          ? _value.checkboxValue
          : checkboxValue // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardTypeCopyWith<$Res>? get selectedCardType {
    if (_value.selectedCardType == null) {
      return null;
    }

    return $CardTypeCopyWith<$Res>(_value.selectedCardType!, (value) {
      return _then(_value.copyWith(selectedCardType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentStateStatus status,
      CardType? selectedCardType,
      AutovalidateMode autovalidateMode,
      bool checkboxValue,
      String? error});

  @override
  $CardTypeCopyWith<$Res>? get selectedCardType;
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedCardType = freezed,
    Object? autovalidateMode = null,
    Object? checkboxValue = null,
    Object? error = freezed,
  }) {
    return _then(_$PaymentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStateStatus,
      selectedCardType: freezed == selectedCardType
          ? _value.selectedCardType
          : selectedCardType // ignore: cast_nullable_to_non_nullable
              as CardType?,
      autovalidateMode: null == autovalidateMode
          ? _value.autovalidateMode
          : autovalidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      checkboxValue: null == checkboxValue
          ? _value.checkboxValue
          : checkboxValue // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {required this.status,
      this.selectedCardType,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.checkboxValue = false,
      this.error});

  @override
  final PaymentStateStatus status;
  @override
  final CardType? selectedCardType;
  @override
  @JsonKey()
  final AutovalidateMode autovalidateMode;
  @override
  @JsonKey()
  final bool checkboxValue;
  @override
  final String? error;

  @override
  String toString() {
    return 'PaymentState(status: $status, selectedCardType: $selectedCardType, autovalidateMode: $autovalidateMode, checkboxValue: $checkboxValue, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedCardType, selectedCardType) ||
                other.selectedCardType == selectedCardType) &&
            (identical(other.autovalidateMode, autovalidateMode) ||
                other.autovalidateMode == autovalidateMode) &&
            (identical(other.checkboxValue, checkboxValue) ||
                other.checkboxValue == checkboxValue) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedCardType,
      autovalidateMode, checkboxValue, error);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {required final PaymentStateStatus status,
      final CardType? selectedCardType,
      final AutovalidateMode autovalidateMode,
      final bool checkboxValue,
      final String? error}) = _$PaymentStateImpl;

  @override
  PaymentStateStatus get status;
  @override
  CardType? get selectedCardType;
  @override
  AutovalidateMode get autovalidateMode;
  @override
  bool get checkboxValue;
  @override
  String? get error;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
