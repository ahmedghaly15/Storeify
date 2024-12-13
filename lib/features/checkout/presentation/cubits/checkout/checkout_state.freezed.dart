// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutState {
  CheckoutStateStatus get status => throw _privateConstructorUsedError;
  int get checkoutHour => throw _privateConstructorUsedError;
  int get checkoutMinutes => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  CheckoutResponse? get checkout => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutStateCopyWith<CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
  @useResult
  $Res call(
      {CheckoutStateStatus status,
      int checkoutHour,
      int checkoutMinutes,
      String phoneNumber,
      String date,
      CheckoutResponse? checkout,
      String? error});
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? checkoutHour = null,
    Object? checkoutMinutes = null,
    Object? phoneNumber = null,
    Object? date = null,
    Object? checkout = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckoutStateStatus,
      checkoutHour: null == checkoutHour
          ? _value.checkoutHour
          : checkoutHour // ignore: cast_nullable_to_non_nullable
              as int,
      checkoutMinutes: null == checkoutMinutes
          ? _value.checkoutMinutes
          : checkoutMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      checkout: freezed == checkout
          ? _value.checkout
          : checkout // ignore: cast_nullable_to_non_nullable
              as CheckoutResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutStateImplCopyWith<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  factory _$$CheckoutStateImplCopyWith(
          _$CheckoutStateImpl value, $Res Function(_$CheckoutStateImpl) then) =
      __$$CheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CheckoutStateStatus status,
      int checkoutHour,
      int checkoutMinutes,
      String phoneNumber,
      String date,
      CheckoutResponse? checkout,
      String? error});
}

/// @nodoc
class __$$CheckoutStateImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutStateImpl>
    implements _$$CheckoutStateImplCopyWith<$Res> {
  __$$CheckoutStateImplCopyWithImpl(
      _$CheckoutStateImpl _value, $Res Function(_$CheckoutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? checkoutHour = null,
    Object? checkoutMinutes = null,
    Object? phoneNumber = null,
    Object? date = null,
    Object? checkout = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CheckoutStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckoutStateStatus,
      checkoutHour: null == checkoutHour
          ? _value.checkoutHour
          : checkoutHour // ignore: cast_nullable_to_non_nullable
              as int,
      checkoutMinutes: null == checkoutMinutes
          ? _value.checkoutMinutes
          : checkoutMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      checkout: freezed == checkout
          ? _value.checkout
          : checkout // ignore: cast_nullable_to_non_nullable
              as CheckoutResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CheckoutStateImpl implements _CheckoutState {
  const _$CheckoutStateImpl(
      {required this.status,
      this.checkoutHour = 0,
      this.checkoutMinutes = 0,
      this.phoneNumber = '',
      this.date = '',
      this.checkout,
      this.error});

  @override
  final CheckoutStateStatus status;
  @override
  @JsonKey()
  final int checkoutHour;
  @override
  @JsonKey()
  final int checkoutMinutes;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String date;
  @override
  final CheckoutResponse? checkout;
  @override
  final String? error;

  @override
  String toString() {
    return 'CheckoutState(status: $status, checkoutHour: $checkoutHour, checkoutMinutes: $checkoutMinutes, phoneNumber: $phoneNumber, date: $date, checkout: $checkout, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.checkoutHour, checkoutHour) ||
                other.checkoutHour == checkoutHour) &&
            (identical(other.checkoutMinutes, checkoutMinutes) ||
                other.checkoutMinutes == checkoutMinutes) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.checkout, checkout) ||
                other.checkout == checkout) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, checkoutHour,
      checkoutMinutes, phoneNumber, date, checkout, error);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      __$$CheckoutStateImplCopyWithImpl<_$CheckoutStateImpl>(this, _$identity);
}

abstract class _CheckoutState implements CheckoutState {
  const factory _CheckoutState(
      {required final CheckoutStateStatus status,
      final int checkoutHour,
      final int checkoutMinutes,
      final String phoneNumber,
      final String date,
      final CheckoutResponse? checkout,
      final String? error}) = _$CheckoutStateImpl;

  @override
  CheckoutStateStatus get status;
  @override
  int get checkoutHour;
  @override
  int get checkoutMinutes;
  @override
  String get phoneNumber;
  @override
  String get date;
  @override
  CheckoutResponse? get checkout;
  @override
  String? get error;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
