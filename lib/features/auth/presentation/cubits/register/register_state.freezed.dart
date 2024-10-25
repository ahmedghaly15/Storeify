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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(StoreifyUser data) registerSuccess,
    required TResult Function(String error) registerError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(StoreifyUser data)? registerSuccess,
    TResult? Function(String error)? registerError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(StoreifyUser data)? registerSuccess,
    TResult Function(String error)? registerError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<T, $Res> {
  factory $RegisterStateCopyWith(
          RegisterState<T> value, $Res Function(RegisterState<T>) then) =
      _$RegisterStateCopyWithImpl<T, $Res, RegisterState<T>>;
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
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.initial()';
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
    required TResult Function() registerLoading,
    required TResult Function(StoreifyUser data) registerSuccess,
    required TResult Function(String error) registerError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(StoreifyUser data)? registerSuccess,
    TResult? Function(String error)? registerError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(StoreifyUser data)? registerSuccess,
    TResult Function(String error)? registerError,
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
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
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

abstract class _Initial<T> implements RegisterState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<T, $Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl<T> value,
          $Res Function(_$RegisterLoadingImpl<T>) then) =
      __$$RegisterLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$RegisterLoadingImpl<T>>
    implements _$$RegisterLoadingImplCopyWith<T, $Res> {
  __$$RegisterLoadingImplCopyWithImpl(_$RegisterLoadingImpl<T> _value,
      $Res Function(_$RegisterLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterLoadingImpl<T> implements RegisterLoading<T> {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(StoreifyUser data) registerSuccess,
    required TResult Function(String error) registerError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(StoreifyUser data)? registerSuccess,
    TResult? Function(String error)? registerError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(StoreifyUser data)? registerSuccess,
    TResult Function(String error)? registerError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading<T> implements RegisterState<T> {
  const factory RegisterLoading() = _$RegisterLoadingImpl<T>;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<T, $Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl<T> value,
          $Res Function(_$RegisterSuccessImpl<T>) then) =
      __$$RegisterSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({StoreifyUser data});
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$RegisterSuccessImpl<T>>
    implements _$$RegisterSuccessImplCopyWith<T, $Res> {
  __$$RegisterSuccessImplCopyWithImpl(_$RegisterSuccessImpl<T> _value,
      $Res Function(_$RegisterSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RegisterSuccessImpl<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StoreifyUser,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessImpl<T> implements RegisterSuccess<T> {
  const _$RegisterSuccessImpl(this.data);

  @override
  final StoreifyUser data;

  @override
  String toString() {
    return 'RegisterState<$T>.registerSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<T, _$RegisterSuccessImpl<T>> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<T, _$RegisterSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(StoreifyUser data) registerSuccess,
    required TResult Function(String error) registerError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return registerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(StoreifyUser data)? registerSuccess,
    TResult? Function(String error)? registerError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return registerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(StoreifyUser data)? registerSuccess,
    TResult Function(String error)? registerError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess<T> implements RegisterState<T> {
  const factory RegisterSuccess(final StoreifyUser data) =
      _$RegisterSuccessImpl<T>;

  StoreifyUser get data;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterSuccessImplCopyWith<T, _$RegisterSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<T, $Res> {
  factory _$$RegisterErrorImplCopyWith(_$RegisterErrorImpl<T> value,
          $Res Function(_$RegisterErrorImpl<T>) then) =
      __$$RegisterErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$RegisterErrorImpl<T>>
    implements _$$RegisterErrorImplCopyWith<T, $Res> {
  __$$RegisterErrorImplCopyWithImpl(_$RegisterErrorImpl<T> _value,
      $Res Function(_$RegisterErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegisterErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterErrorImpl<T> implements RegisterError<T> {
  const _$RegisterErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterState<$T>.registerError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<T, _$RegisterErrorImpl<T>> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<T, _$RegisterErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(StoreifyUser data) registerSuccess,
    required TResult Function(String error) registerError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return registerError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(StoreifyUser data)? registerSuccess,
    TResult? Function(String error)? registerError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return registerError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(StoreifyUser data)? registerSuccess,
    TResult Function(String error)? registerError,
    TResult Function(bool isPasswordVisible)? invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return registerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return registerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    TResult Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(this);
    }
    return orElse();
  }
}

abstract class RegisterError<T> implements RegisterState<T> {
  const factory RegisterError(final String error) = _$RegisterErrorImpl<T>;

  String get error;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterErrorImplCopyWith<T, _$RegisterErrorImpl<T>> get copyWith =>
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
    extends _$RegisterStateCopyWithImpl<T, $Res,
        _$InvertPasswordVisibilityImpl<T>>
    implements _$$InvertPasswordVisibilityImplCopyWith<T, $Res> {
  __$$InvertPasswordVisibilityImplCopyWithImpl(
      _$InvertPasswordVisibilityImpl<T> _value,
      $Res Function(_$InvertPasswordVisibilityImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
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
    return 'RegisterState<$T>.invertPasswordVisibility(isPasswordVisible: $isPasswordVisible)';
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

  /// Create a copy of RegisterState
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
    required TResult Function() registerLoading,
    required TResult Function(StoreifyUser data) registerSuccess,
    required TResult Function(String error) registerError,
    required TResult Function(bool isPasswordVisible) invertPasswordVisibility,
  }) {
    return invertPasswordVisibility(isPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(StoreifyUser data)? registerSuccess,
    TResult? Function(String error)? registerError,
    TResult? Function(bool isPasswordVisible)? invertPasswordVisibility,
  }) {
    return invertPasswordVisibility?.call(isPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(StoreifyUser data)? registerSuccess,
    TResult Function(String error)? registerError,
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
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
    required TResult Function(InvertPasswordVisibility<T> value)
        invertPasswordVisibility,
  }) {
    return invertPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
    TResult? Function(InvertPasswordVisibility<T> value)?
        invertPasswordVisibility,
  }) {
    return invertPasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
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

abstract class InvertPasswordVisibility<T> implements RegisterState<T> {
  const factory InvertPasswordVisibility(final bool isPasswordVisible) =
      _$InvertPasswordVisibilityImpl<T>;

  bool get isPasswordVisible;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvertPasswordVisibilityImplCopyWith<T, _$InvertPasswordVisibilityImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
