// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentMethodState {
  PaymentMethodStateStatus get status => throw _privateConstructorUsedError;
  PaymentMethod? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodStateCopyWith<PaymentMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodStateCopyWith(
          PaymentMethodState value, $Res Function(PaymentMethodState) then) =
      _$PaymentMethodStateCopyWithImpl<$Res, PaymentMethodState>;
  @useResult
  $Res call(
      {PaymentMethodStateStatus status,
      PaymentMethod? selectedPaymentMethod,
      String? error});

  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
}

/// @nodoc
class _$PaymentMethodStateCopyWithImpl<$Res, $Val extends PaymentMethodState>
    implements $PaymentMethodStateCopyWith<$Res> {
  _$PaymentMethodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedPaymentMethod = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentMethodStateStatus,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod {
    if (_value.selectedPaymentMethod == null) {
      return null;
    }

    return $PaymentMethodCopyWith<$Res>(_value.selectedPaymentMethod!, (value) {
      return _then(_value.copyWith(selectedPaymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentMethodStateImplCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory _$$PaymentMethodStateImplCopyWith(_$PaymentMethodStateImpl value,
          $Res Function(_$PaymentMethodStateImpl) then) =
      __$$PaymentMethodStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentMethodStateStatus status,
      PaymentMethod? selectedPaymentMethod,
      String? error});

  @override
  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
}

/// @nodoc
class __$$PaymentMethodStateImplCopyWithImpl<$Res>
    extends _$PaymentMethodStateCopyWithImpl<$Res, _$PaymentMethodStateImpl>
    implements _$$PaymentMethodStateImplCopyWith<$Res> {
  __$$PaymentMethodStateImplCopyWithImpl(_$PaymentMethodStateImpl _value,
      $Res Function(_$PaymentMethodStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedPaymentMethod = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PaymentMethodStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentMethodStateStatus,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentMethodStateImpl implements _PaymentMethodState {
  const _$PaymentMethodStateImpl(
      {required this.status, this.selectedPaymentMethod, this.error});

  @override
  final PaymentMethodStateStatus status;
  @override
  final PaymentMethod? selectedPaymentMethod;
  @override
  final String? error;

  @override
  String toString() {
    return 'PaymentMethodState(status: $status, selectedPaymentMethod: $selectedPaymentMethod, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, selectedPaymentMethod, error);

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodStateImplCopyWith<_$PaymentMethodStateImpl> get copyWith =>
      __$$PaymentMethodStateImplCopyWithImpl<_$PaymentMethodStateImpl>(
          this, _$identity);
}

abstract class _PaymentMethodState implements PaymentMethodState {
  const factory _PaymentMethodState(
      {required final PaymentMethodStateStatus status,
      final PaymentMethod? selectedPaymentMethod,
      final String? error}) = _$PaymentMethodStateImpl;

  @override
  PaymentMethodStateStatus get status;
  @override
  PaymentMethod? get selectedPaymentMethod;
  @override
  String? get error;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodStateImplCopyWith<_$PaymentMethodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
