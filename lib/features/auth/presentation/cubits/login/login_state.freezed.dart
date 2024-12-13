// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState<T> {
  LoginStateStatus get status => throw _privateConstructorUsedError;
  StoreifyUser? get user => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isPasswordObscure => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<T, LoginState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<T, $Res> {
  factory $LoginStateCopyWith(
          LoginState<T> value, $Res Function(LoginState<T>) then) =
      _$LoginStateCopyWithImpl<T, $Res, LoginState<T>>;
  @useResult
  $Res call(
      {LoginStateStatus status,
      StoreifyUser? user,
      String? error,
      bool isPasswordObscure});

  $StoreifyUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<T, $Res, $Val extends LoginState<T>>
    implements $LoginStateCopyWith<T, $Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? isPasswordObscure = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStateStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StoreifyUser?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of LoginState
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
abstract class _$$LoginStateImplCopyWith<T, $Res>
    implements $LoginStateCopyWith<T, $Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl<T> value, $Res Function(_$LoginStateImpl<T>) then) =
      __$$LoginStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {LoginStateStatus status,
      StoreifyUser? user,
      String? error,
      bool isPasswordObscure});

  @override
  $StoreifyUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginStateImpl<T>>
    implements _$$LoginStateImplCopyWith<T, $Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl<T> _value, $Res Function(_$LoginStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? error = freezed,
    Object? isPasswordObscure = null,
  }) {
    return _then(_$LoginStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStateStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StoreifyUser?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl<T> implements _LoginState<T> {
  const _$LoginStateImpl(
      {required this.status,
      this.user,
      this.error,
      this.isPasswordObscure = true});

  @override
  final LoginStateStatus status;
  @override
  final StoreifyUser? user;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isPasswordObscure;

  @override
  String toString() {
    return 'LoginState<$T>(status: $status, user: $user, error: $error, isPasswordObscure: $isPasswordObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                other.isPasswordObscure == isPasswordObscure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, user, error, isPasswordObscure);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<T, _$LoginStateImpl<T>> get copyWith =>
      __$$LoginStateImplCopyWithImpl<T, _$LoginStateImpl<T>>(this, _$identity);
}

abstract class _LoginState<T> implements LoginState<T> {
  const factory _LoginState(
      {required final LoginStateStatus status,
      final StoreifyUser? user,
      final String? error,
      final bool isPasswordObscure}) = _$LoginStateImpl<T>;

  @override
  LoginStateStatus get status;
  @override
  StoreifyUser? get user;
  @override
  String? get error;
  @override
  bool get isPasswordObscure;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<T, _$LoginStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
