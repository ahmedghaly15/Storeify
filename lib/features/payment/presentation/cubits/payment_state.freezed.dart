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
mixin _$PaymentState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() payLoading,
    required TResult Function() paySuccess,
    required TResult Function(String error) payError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? payLoading,
    TResult? Function()? paySuccess,
    TResult? Function(String error)? payError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? payLoading,
    TResult Function()? paySuccess,
    TResult Function(String error)? payError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PayLoading<T> value) payLoading,
    required TResult Function(PaySuccess<T> value) paySuccess,
    required TResult Function(PayError<T> value) payError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PayLoading<T> value)? payLoading,
    TResult? Function(PaySuccess<T> value)? paySuccess,
    TResult? Function(PayError<T> value)? payError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PayLoading<T> value)? payLoading,
    TResult Function(PaySuccess<T> value)? paySuccess,
    TResult Function(PayError<T> value)? payError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<T, $Res> {
  factory $PaymentStateCopyWith(
          PaymentState<T> value, $Res Function(PaymentState<T>) then) =
      _$PaymentStateCopyWithImpl<T, $Res, PaymentState<T>>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<T, $Res, $Val extends PaymentState<T>>
    implements $PaymentStateCopyWith<T, $Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
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
    extends _$PaymentStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentState<$T>.initial()';
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
    required TResult Function() payLoading,
    required TResult Function() paySuccess,
    required TResult Function(String error) payError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? payLoading,
    TResult? Function()? paySuccess,
    TResult? Function(String error)? payError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? payLoading,
    TResult Function()? paySuccess,
    TResult Function(String error)? payError,
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
    required TResult Function(PayLoading<T> value) payLoading,
    required TResult Function(PaySuccess<T> value) paySuccess,
    required TResult Function(PayError<T> value) payError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PayLoading<T> value)? payLoading,
    TResult? Function(PaySuccess<T> value)? paySuccess,
    TResult? Function(PayError<T> value)? payError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PayLoading<T> value)? payLoading,
    TResult Function(PaySuccess<T> value)? paySuccess,
    TResult Function(PayError<T> value)? payError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements PaymentState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$PayLoadingImplCopyWith<T, $Res> {
  factory _$$PayLoadingImplCopyWith(
          _$PayLoadingImpl<T> value, $Res Function(_$PayLoadingImpl<T>) then) =
      __$$PayLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PayLoadingImplCopyWithImpl<T, $Res>
    extends _$PaymentStateCopyWithImpl<T, $Res, _$PayLoadingImpl<T>>
    implements _$$PayLoadingImplCopyWith<T, $Res> {
  __$$PayLoadingImplCopyWithImpl(
      _$PayLoadingImpl<T> _value, $Res Function(_$PayLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PayLoadingImpl<T> implements PayLoading<T> {
  const _$PayLoadingImpl();

  @override
  String toString() {
    return 'PaymentState<$T>.payLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PayLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() payLoading,
    required TResult Function() paySuccess,
    required TResult Function(String error) payError,
  }) {
    return payLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? payLoading,
    TResult? Function()? paySuccess,
    TResult? Function(String error)? payError,
  }) {
    return payLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? payLoading,
    TResult Function()? paySuccess,
    TResult Function(String error)? payError,
    required TResult orElse(),
  }) {
    if (payLoading != null) {
      return payLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PayLoading<T> value) payLoading,
    required TResult Function(PaySuccess<T> value) paySuccess,
    required TResult Function(PayError<T> value) payError,
  }) {
    return payLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PayLoading<T> value)? payLoading,
    TResult? Function(PaySuccess<T> value)? paySuccess,
    TResult? Function(PayError<T> value)? payError,
  }) {
    return payLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PayLoading<T> value)? payLoading,
    TResult Function(PaySuccess<T> value)? paySuccess,
    TResult Function(PayError<T> value)? payError,
    required TResult orElse(),
  }) {
    if (payLoading != null) {
      return payLoading(this);
    }
    return orElse();
  }
}

abstract class PayLoading<T> implements PaymentState<T> {
  const factory PayLoading() = _$PayLoadingImpl<T>;
}

/// @nodoc
abstract class _$$PaySuccessImplCopyWith<T, $Res> {
  factory _$$PaySuccessImplCopyWith(
          _$PaySuccessImpl<T> value, $Res Function(_$PaySuccessImpl<T>) then) =
      __$$PaySuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaySuccessImplCopyWithImpl<T, $Res>
    extends _$PaymentStateCopyWithImpl<T, $Res, _$PaySuccessImpl<T>>
    implements _$$PaySuccessImplCopyWith<T, $Res> {
  __$$PaySuccessImplCopyWithImpl(
      _$PaySuccessImpl<T> _value, $Res Function(_$PaySuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaySuccessImpl<T> implements PaySuccess<T> {
  const _$PaySuccessImpl();

  @override
  String toString() {
    return 'PaymentState<$T>.paySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaySuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() payLoading,
    required TResult Function() paySuccess,
    required TResult Function(String error) payError,
  }) {
    return paySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? payLoading,
    TResult? Function()? paySuccess,
    TResult? Function(String error)? payError,
  }) {
    return paySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? payLoading,
    TResult Function()? paySuccess,
    TResult Function(String error)? payError,
    required TResult orElse(),
  }) {
    if (paySuccess != null) {
      return paySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PayLoading<T> value) payLoading,
    required TResult Function(PaySuccess<T> value) paySuccess,
    required TResult Function(PayError<T> value) payError,
  }) {
    return paySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PayLoading<T> value)? payLoading,
    TResult? Function(PaySuccess<T> value)? paySuccess,
    TResult? Function(PayError<T> value)? payError,
  }) {
    return paySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PayLoading<T> value)? payLoading,
    TResult Function(PaySuccess<T> value)? paySuccess,
    TResult Function(PayError<T> value)? payError,
    required TResult orElse(),
  }) {
    if (paySuccess != null) {
      return paySuccess(this);
    }
    return orElse();
  }
}

abstract class PaySuccess<T> implements PaymentState<T> {
  const factory PaySuccess() = _$PaySuccessImpl<T>;
}

/// @nodoc
abstract class _$$PayErrorImplCopyWith<T, $Res> {
  factory _$$PayErrorImplCopyWith(
          _$PayErrorImpl<T> value, $Res Function(_$PayErrorImpl<T>) then) =
      __$$PayErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PayErrorImplCopyWithImpl<T, $Res>
    extends _$PaymentStateCopyWithImpl<T, $Res, _$PayErrorImpl<T>>
    implements _$$PayErrorImplCopyWith<T, $Res> {
  __$$PayErrorImplCopyWithImpl(
      _$PayErrorImpl<T> _value, $Res Function(_$PayErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PayErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayErrorImpl<T> implements PayError<T> {
  const _$PayErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PaymentState<$T>.payError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayErrorImplCopyWith<T, _$PayErrorImpl<T>> get copyWith =>
      __$$PayErrorImplCopyWithImpl<T, _$PayErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() payLoading,
    required TResult Function() paySuccess,
    required TResult Function(String error) payError,
  }) {
    return payError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? payLoading,
    TResult? Function()? paySuccess,
    TResult? Function(String error)? payError,
  }) {
    return payError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? payLoading,
    TResult Function()? paySuccess,
    TResult Function(String error)? payError,
    required TResult orElse(),
  }) {
    if (payError != null) {
      return payError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(PayLoading<T> value) payLoading,
    required TResult Function(PaySuccess<T> value) paySuccess,
    required TResult Function(PayError<T> value) payError,
  }) {
    return payError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PayLoading<T> value)? payLoading,
    TResult? Function(PaySuccess<T> value)? paySuccess,
    TResult? Function(PayError<T> value)? payError,
  }) {
    return payError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PayLoading<T> value)? payLoading,
    TResult Function(PaySuccess<T> value)? paySuccess,
    TResult Function(PayError<T> value)? payError,
    required TResult orElse(),
  }) {
    if (payError != null) {
      return payError(this);
    }
    return orElse();
  }
}

abstract class PayError<T> implements PaymentState<T> {
  const factory PayError(final String error) = _$PayErrorImpl<T>;

  String get error;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayErrorImplCopyWith<T, _$PayErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
