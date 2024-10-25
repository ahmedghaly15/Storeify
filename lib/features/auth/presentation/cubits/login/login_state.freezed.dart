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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(StoreifyUser data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(StoreifyUser data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(StoreifyUser data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<T, $Res> {
  factory $LoginStateCopyWith(
          LoginState<T> value, $Res Function(LoginState<T>) then) =
      _$LoginStateCopyWithImpl<T, $Res, LoginState<T>>;
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
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(StoreifyUser data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(StoreifyUser data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(StoreifyUser data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<T, $Res> {
  factory _$$LoginLoadingImplCopyWith(_$LoginLoadingImpl<T> value,
          $Res Function(_$LoginLoadingImpl<T>) then) =
      __$$LoginLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginLoadingImpl<T>>
    implements _$$LoginLoadingImplCopyWith<T, $Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl<T> _value, $Res Function(_$LoginLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl<T> implements LoginLoading<T> {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState<$T>.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(StoreifyUser data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(StoreifyUser data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(StoreifyUser data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading<T> implements LoginState<T> {
  const factory LoginLoading() = _$LoginLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<T, $Res> {
  factory _$$LoginSuccessImplCopyWith(_$LoginSuccessImpl<T> value,
          $Res Function(_$LoginSuccessImpl<T>) then) =
      __$$LoginSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({StoreifyUser data});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginSuccessImpl<T>>
    implements _$$LoginSuccessImplCopyWith<T, $Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl<T> _value, $Res Function(_$LoginSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoginSuccessImpl<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoreifyUser,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl<T> implements LoginSuccess<T> {
  const _$LoginSuccessImpl(this.data);

  @override
  final StoreifyUser data;

  @override
  String toString() {
    return 'LoginState<$T>.loginSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<T, _$LoginSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(StoreifyUser data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return loginSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(StoreifyUser data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return loginSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(StoreifyUser data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess<T> implements LoginState<T> {
  const factory LoginSuccess(final StoreifyUser data) = _$LoginSuccessImpl<T>;

  StoreifyUser get data;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<T, $Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl<T> value, $Res Function(_$LoginErrorImpl<T>) then) =
      __$$LoginErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginErrorImpl<T>>
    implements _$$LoginErrorImplCopyWith<T, $Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl<T> _value, $Res Function(_$LoginErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl<T> implements LoginError<T> {
  const _$LoginErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState<$T>.loginError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<T, _$LoginErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(StoreifyUser data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return loginError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(StoreifyUser data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return loginError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(StoreifyUser data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginError<T> implements LoginState<T> {
  const factory LoginError(final String error) = _$LoginErrorImpl<T>;

  String get error;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvertPasswordVisibilityImplCopyWith<T, $Res> {
  factory _$$InvertPasswordVisibilityImplCopyWith(
          _$InvertPasswordVisibilityImpl<T> value,
          $Res Function(_$InvertPasswordVisibilityImpl<T>) then) =
      __$$InvertPasswordVisibilityImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isPasswordVisible});
}

/// @nodoc
class __$$InvertPasswordVisibilityImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$InvertPasswordVisibilityImpl<T>>
    implements _$$InvertPasswordVisibilityImplCopyWith<T, $Res> {
  __$$InvertPasswordVisibilityImplCopyWithImpl(
      _$InvertPasswordVisibilityImpl<T> _value,
      $Res Function(_$InvertPasswordVisibilityImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordVisible = null,
  }) {
    return _then(_$InvertPasswordVisibilityImpl<T>(
      null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InvertPasswordVisibilityImpl<T> implements InvertPasswordVisibility<T> {
  const _$InvertPasswordVisibilityImpl(this.isPasswordVisible);

  @override
  final bool isPasswordVisible;

  @override
  String toString() {
    return 'LoginState<$T>.invertPasswordVisibility(isPasswordVisible: $isPasswordVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvertPasswordVisibilityImpl<T> &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordVisible);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvertPasswordVisibilityImplCopyWith<T, _$InvertPasswordVisibilityImpl<T>>
      get copyWith => __$$InvertPasswordVisibilityImplCopyWithImpl<T,
          _$InvertPasswordVisibilityImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(StoreifyUser data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return invertPasswordVisibility(isPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(StoreifyUser data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return invertPasswordVisibility?.call(isPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(StoreifyUser data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (invertPasswordVisibility != null) {
      return invertPasswordVisibility(isPasswordVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return invertPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return invertPasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (invertPasswordVisibility != null) {
      return invertPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class InvertPasswordVisibility<T> implements LoginState<T> {
  const factory InvertPasswordVisibility(final bool isPasswordVisible) =
      _$InvertPasswordVisibilityImpl<T>;

  bool get isPasswordVisible;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvertPasswordVisibilityImplCopyWith<T, _$InvertPasswordVisibilityImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
