// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addProductToCartLoading,
    required TResult Function() addProductToCartSuccess,
    required TResult Function(String error) addProductToCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addProductToCartLoading,
    TResult? Function()? addProductToCartSuccess,
    TResult? Function(String error)? addProductToCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addProductToCartLoading,
    TResult Function()? addProductToCartSuccess,
    TResult Function(String error)? addProductToCartError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value)
        addProductToCartLoading,
    required TResult Function(AddProductToCartSuccess<T> value)
        addProductToCartSuccess,
    required TResult Function(AddProductToCartError<T> value)
        addProductToCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)?
        addProductToCartLoading,
    TResult? Function(AddProductToCartSuccess<T> value)?
        addProductToCartSuccess,
    TResult? Function(AddProductToCartError<T> value)? addProductToCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? addProductToCartLoading,
    TResult Function(AddProductToCartSuccess<T> value)? addProductToCartSuccess,
    TResult Function(AddProductToCartError<T> value)? addProductToCartError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<T, $Res> {
  factory $CartStateCopyWith(
          CartState<T> value, $Res Function(CartState<T>) then) =
      _$CartStateCopyWithImpl<T, $Res, CartState<T>>;
}

/// @nodoc
class _$CartStateCopyWithImpl<T, $Res, $Val extends CartState<T>>
    implements $CartStateCopyWith<T, $Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState<$T>.initial()';
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
    required TResult Function() addProductToCartLoading,
    required TResult Function() addProductToCartSuccess,
    required TResult Function(String error) addProductToCartError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addProductToCartLoading,
    TResult? Function()? addProductToCartSuccess,
    TResult? Function(String error)? addProductToCartError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addProductToCartLoading,
    TResult Function()? addProductToCartSuccess,
    TResult Function(String error)? addProductToCartError,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value)
        addProductToCartLoading,
    required TResult Function(AddProductToCartSuccess<T> value)
        addProductToCartSuccess,
    required TResult Function(AddProductToCartError<T> value)
        addProductToCartError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)?
        addProductToCartLoading,
    TResult? Function(AddProductToCartSuccess<T> value)?
        addProductToCartSuccess,
    TResult? Function(AddProductToCartError<T> value)? addProductToCartError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? addProductToCartLoading,
    TResult Function(AddProductToCartSuccess<T> value)? addProductToCartSuccess,
    TResult Function(AddProductToCartError<T> value)? addProductToCartError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements CartState<T> {
  const factory Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$AddProductToCartLoadingImplCopyWith<T, $Res> {
  factory _$$AddProductToCartLoadingImplCopyWith(
          _$AddProductToCartLoadingImpl<T> value,
          $Res Function(_$AddProductToCartLoadingImpl<T>) then) =
      __$$AddProductToCartLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddProductToCartLoadingImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$AddProductToCartLoadingImpl<T>>
    implements _$$AddProductToCartLoadingImplCopyWith<T, $Res> {
  __$$AddProductToCartLoadingImplCopyWithImpl(
      _$AddProductToCartLoadingImpl<T> _value,
      $Res Function(_$AddProductToCartLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddProductToCartLoadingImpl<T> implements AddProductToCartLoading<T> {
  const _$AddProductToCartLoadingImpl();

  @override
  String toString() {
    return 'CartState<$T>.addProductToCartLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addProductToCartLoading,
    required TResult Function() addProductToCartSuccess,
    required TResult Function(String error) addProductToCartError,
  }) {
    return addProductToCartLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addProductToCartLoading,
    TResult? Function()? addProductToCartSuccess,
    TResult? Function(String error)? addProductToCartError,
  }) {
    return addProductToCartLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addProductToCartLoading,
    TResult Function()? addProductToCartSuccess,
    TResult Function(String error)? addProductToCartError,
    required TResult orElse(),
  }) {
    if (addProductToCartLoading != null) {
      return addProductToCartLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value)
        addProductToCartLoading,
    required TResult Function(AddProductToCartSuccess<T> value)
        addProductToCartSuccess,
    required TResult Function(AddProductToCartError<T> value)
        addProductToCartError,
  }) {
    return addProductToCartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)?
        addProductToCartLoading,
    TResult? Function(AddProductToCartSuccess<T> value)?
        addProductToCartSuccess,
    TResult? Function(AddProductToCartError<T> value)? addProductToCartError,
  }) {
    return addProductToCartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? addProductToCartLoading,
    TResult Function(AddProductToCartSuccess<T> value)? addProductToCartSuccess,
    TResult Function(AddProductToCartError<T> value)? addProductToCartError,
    required TResult orElse(),
  }) {
    if (addProductToCartLoading != null) {
      return addProductToCartLoading(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartLoading<T> implements CartState<T> {
  const factory AddProductToCartLoading() = _$AddProductToCartLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AddProductToCartSuccessImplCopyWith<T, $Res> {
  factory _$$AddProductToCartSuccessImplCopyWith(
          _$AddProductToCartSuccessImpl<T> value,
          $Res Function(_$AddProductToCartSuccessImpl<T>) then) =
      __$$AddProductToCartSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AddProductToCartSuccessImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$AddProductToCartSuccessImpl<T>>
    implements _$$AddProductToCartSuccessImplCopyWith<T, $Res> {
  __$$AddProductToCartSuccessImplCopyWithImpl(
      _$AddProductToCartSuccessImpl<T> _value,
      $Res Function(_$AddProductToCartSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddProductToCartSuccessImpl<T> implements AddProductToCartSuccess<T> {
  const _$AddProductToCartSuccessImpl();

  @override
  String toString() {
    return 'CartState<$T>.addProductToCartSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addProductToCartLoading,
    required TResult Function() addProductToCartSuccess,
    required TResult Function(String error) addProductToCartError,
  }) {
    return addProductToCartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addProductToCartLoading,
    TResult? Function()? addProductToCartSuccess,
    TResult? Function(String error)? addProductToCartError,
  }) {
    return addProductToCartSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addProductToCartLoading,
    TResult Function()? addProductToCartSuccess,
    TResult Function(String error)? addProductToCartError,
    required TResult orElse(),
  }) {
    if (addProductToCartSuccess != null) {
      return addProductToCartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value)
        addProductToCartLoading,
    required TResult Function(AddProductToCartSuccess<T> value)
        addProductToCartSuccess,
    required TResult Function(AddProductToCartError<T> value)
        addProductToCartError,
  }) {
    return addProductToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)?
        addProductToCartLoading,
    TResult? Function(AddProductToCartSuccess<T> value)?
        addProductToCartSuccess,
    TResult? Function(AddProductToCartError<T> value)? addProductToCartError,
  }) {
    return addProductToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? addProductToCartLoading,
    TResult Function(AddProductToCartSuccess<T> value)? addProductToCartSuccess,
    TResult Function(AddProductToCartError<T> value)? addProductToCartError,
    required TResult orElse(),
  }) {
    if (addProductToCartSuccess != null) {
      return addProductToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartSuccess<T> implements CartState<T> {
  const factory AddProductToCartSuccess() = _$AddProductToCartSuccessImpl<T>;
}

/// @nodoc
abstract class _$$AddProductToCartErrorImplCopyWith<T, $Res> {
  factory _$$AddProductToCartErrorImplCopyWith(
          _$AddProductToCartErrorImpl<T> value,
          $Res Function(_$AddProductToCartErrorImpl<T>) then) =
      __$$AddProductToCartErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddProductToCartErrorImplCopyWithImpl<T, $Res>
    extends _$CartStateCopyWithImpl<T, $Res, _$AddProductToCartErrorImpl<T>>
    implements _$$AddProductToCartErrorImplCopyWith<T, $Res> {
  __$$AddProductToCartErrorImplCopyWithImpl(
      _$AddProductToCartErrorImpl<T> _value,
      $Res Function(_$AddProductToCartErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddProductToCartErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductToCartErrorImpl<T> implements AddProductToCartError<T> {
  const _$AddProductToCartErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CartState<$T>.addProductToCartError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartErrorImplCopyWith<T, _$AddProductToCartErrorImpl<T>>
      get copyWith => __$$AddProductToCartErrorImplCopyWithImpl<T,
          _$AddProductToCartErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addProductToCartLoading,
    required TResult Function() addProductToCartSuccess,
    required TResult Function(String error) addProductToCartError,
  }) {
    return addProductToCartError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addProductToCartLoading,
    TResult? Function()? addProductToCartSuccess,
    TResult? Function(String error)? addProductToCartError,
  }) {
    return addProductToCartError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addProductToCartLoading,
    TResult Function()? addProductToCartSuccess,
    TResult Function(String error)? addProductToCartError,
    required TResult orElse(),
  }) {
    if (addProductToCartError != null) {
      return addProductToCartError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(AddProductToCartLoading<T> value)
        addProductToCartLoading,
    required TResult Function(AddProductToCartSuccess<T> value)
        addProductToCartSuccess,
    required TResult Function(AddProductToCartError<T> value)
        addProductToCartError,
  }) {
    return addProductToCartError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(AddProductToCartLoading<T> value)?
        addProductToCartLoading,
    TResult? Function(AddProductToCartSuccess<T> value)?
        addProductToCartSuccess,
    TResult? Function(AddProductToCartError<T> value)? addProductToCartError,
  }) {
    return addProductToCartError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(AddProductToCartLoading<T> value)? addProductToCartLoading,
    TResult Function(AddProductToCartSuccess<T> value)? addProductToCartSuccess,
    TResult Function(AddProductToCartError<T> value)? addProductToCartError,
    required TResult orElse(),
  }) {
    if (addProductToCartError != null) {
      return addProductToCartError(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartError<T> implements CartState<T> {
  const factory AddProductToCartError(final String error) =
      _$AddProductToCartErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$AddProductToCartErrorImplCopyWith<T, _$AddProductToCartErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
