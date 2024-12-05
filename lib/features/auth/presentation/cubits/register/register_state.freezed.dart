// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState<T> {
  RegisterStateStatus get status => throw _privateConstructorUsedError;
  StoreifyUser? get user => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isPassObscure => throw _privateConstructorUsedError;
  bool get isConfirmPassObscure => throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<T, RegisterState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<T, $Res> {
  factory $RegisterStateCopyWith(
          RegisterState<T> value, $Res Function(RegisterState<T>) then) =
      _$RegisterStateCopyWithImpl<T, $Res, RegisterState<T>>;
  @useResult
  $Res call(
      {RegisterStateStatus status,
      StoreifyUser? user,
      String? error,
      bool isPassObscure,
      bool isConfirmPassObscure});

  $StoreifyUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<T, $Res, $Val extends RegisterState<T>>
    implements $RegisterStateCopyWith<T, $Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? isPassObscure = null,
    Object? isConfirmPassObscure = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStateStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StoreifyUser?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isPassObscure: null == isPassObscure
          ? _value.isPassObscure
          : isPassObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPassObscure: null == isConfirmPassObscure
          ? _value.isConfirmPassObscure
          : isConfirmPassObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreifyUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $StoreifyUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<T, $Res>
    implements $RegisterStateCopyWith<T, $Res> {
  factory _$$RegisterStateImplCopyWith(_$RegisterStateImpl<T> value,
          $Res Function(_$RegisterStateImpl<T>) then) =
      __$$RegisterStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {RegisterStateStatus status,
      StoreifyUser? user,
      String? error,
      bool isPassObscure,
      bool isConfirmPassObscure});

  @override
  $StoreifyUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$RegisterStateImpl<T>>
    implements _$$RegisterStateImplCopyWith<T, $Res> {
  __$$RegisterStateImplCopyWithImpl(_$RegisterStateImpl<T> _value,
      $Res Function(_$RegisterStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? isPassObscure = null,
    Object? isConfirmPassObscure = null,
  }) {
    return _then(_$RegisterStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStateStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StoreifyUser?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isPassObscure: null == isPassObscure
          ? _value.isPassObscure
          : isPassObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPassObscure: null == isConfirmPassObscure
          ? _value.isConfirmPassObscure
          : isConfirmPassObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl<T> implements _RegisterState<T> {
  const _$RegisterStateImpl(
      {required this.status,
      this.user,
      this.error,
      this.isPassObscure = true,
      this.isConfirmPassObscure = true});

  @override
  final RegisterStateStatus status;
  @override
  final StoreifyUser? user;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isPassObscure;
  @override
  @JsonKey()
  final bool isConfirmPassObscure;

  @override
  String toString() {
    return 'RegisterState<$T>(status: $status, user: $user, error: $error, isPassObscure: $isPassObscure, isConfirmPassObscure: $isConfirmPassObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isPassObscure, isPassObscure) ||
                other.isPassObscure == isPassObscure) &&
            (identical(other.isConfirmPassObscure, isConfirmPassObscure) ||
                other.isConfirmPassObscure == isConfirmPassObscure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, user, error, isPassObscure, isConfirmPassObscure);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<T, _$RegisterStateImpl<T>> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<T, _$RegisterStateImpl<T>>(
          this, _$identity);
}

abstract class _RegisterState<T> implements RegisterState<T> {
  const factory _RegisterState(
      {required final RegisterStateStatus status,
      final StoreifyUser? user,
      final String? error,
      final bool isPassObscure,
      final bool isConfirmPassObscure}) = _$RegisterStateImpl<T>;

  @override
  RegisterStateStatus get status;
  @override
  StoreifyUser? get user;
  @override
  String? get error;
  @override
  bool get isPassObscure;
  @override
  bool get isConfirmPassObscure;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterStateImplCopyWith<T, _$RegisterStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
