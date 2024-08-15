// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoresState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchStoresLoading<T> value) fetchStoresLoading,
    required TResult Function(FetchStoresSuccess<T> value) fetchStoresSuccess,
    required TResult Function(FetchStoresError<T> value) fetchStoresError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresStateCopyWith<T, $Res> {
  factory $StoresStateCopyWith(
          StoresState<T> value, $Res Function(StoresState<T>) then) =
      _$StoresStateCopyWithImpl<T, $Res, StoresState<T>>;
}

/// @nodoc
class _$StoresStateCopyWithImpl<T, $Res, $Val extends StoresState<T>>
    implements $StoresStateCopyWith<T, $Res> {
  _$StoresStateCopyWithImpl(this._value, this._then);

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
    extends _$StoresStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StoresState<$T>.initial()';
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
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
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
    required TResult Function(FetchStoresLoading<T> value) fetchStoresLoading,
    required TResult Function(FetchStoresSuccess<T> value) fetchStoresSuccess,
    required TResult Function(FetchStoresError<T> value) fetchStoresError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements StoresState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$FetchStoresLoadingImplCopyWith<T, $Res> {
  factory _$$FetchStoresLoadingImplCopyWith(_$FetchStoresLoadingImpl<T> value,
          $Res Function(_$FetchStoresLoadingImpl<T>) then) =
      __$$FetchStoresLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FetchStoresLoadingImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res, _$FetchStoresLoadingImpl<T>>
    implements _$$FetchStoresLoadingImplCopyWith<T, $Res> {
  __$$FetchStoresLoadingImplCopyWithImpl(_$FetchStoresLoadingImpl<T> _value,
      $Res Function(_$FetchStoresLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchStoresLoadingImpl<T> implements FetchStoresLoading<T> {
  const _$FetchStoresLoadingImpl();

  @override
  String toString() {
    return 'StoresState<$T>.fetchStoresLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStoresLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
  }) {
    return fetchStoresLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
  }) {
    return fetchStoresLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    required TResult orElse(),
  }) {
    if (fetchStoresLoading != null) {
      return fetchStoresLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchStoresLoading<T> value) fetchStoresLoading,
    required TResult Function(FetchStoresSuccess<T> value) fetchStoresSuccess,
    required TResult Function(FetchStoresError<T> value) fetchStoresError,
  }) {
    return fetchStoresLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
  }) {
    return fetchStoresLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    required TResult orElse(),
  }) {
    if (fetchStoresLoading != null) {
      return fetchStoresLoading(this);
    }
    return orElse();
  }
}

abstract class FetchStoresLoading<T> implements StoresState<T> {
  const factory FetchStoresLoading() = _$FetchStoresLoadingImpl<T>;
}

/// @nodoc
abstract class _$$FetchStoresSuccessImplCopyWith<T, $Res> {
  factory _$$FetchStoresSuccessImplCopyWith(_$FetchStoresSuccessImpl<T> value,
          $Res Function(_$FetchStoresSuccessImpl<T>) then) =
      __$$FetchStoresSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FetchStoresResponse stores});
}

/// @nodoc
class __$$FetchStoresSuccessImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res, _$FetchStoresSuccessImpl<T>>
    implements _$$FetchStoresSuccessImplCopyWith<T, $Res> {
  __$$FetchStoresSuccessImplCopyWithImpl(_$FetchStoresSuccessImpl<T> _value,
      $Res Function(_$FetchStoresSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_$FetchStoresSuccessImpl<T>(
      null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as FetchStoresResponse,
    ));
  }
}

/// @nodoc

class _$FetchStoresSuccessImpl<T> implements FetchStoresSuccess<T> {
  const _$FetchStoresSuccessImpl(this.stores);

  @override
  final FetchStoresResponse stores;

  @override
  String toString() {
    return 'StoresState<$T>.fetchStoresSuccess(stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStoresSuccessImpl<T> &&
            (identical(other.stores, stores) || other.stores == stores));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStoresSuccessImplCopyWith<T, _$FetchStoresSuccessImpl<T>>
      get copyWith => __$$FetchStoresSuccessImplCopyWithImpl<T,
          _$FetchStoresSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
  }) {
    return fetchStoresSuccess(stores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
  }) {
    return fetchStoresSuccess?.call(stores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    required TResult orElse(),
  }) {
    if (fetchStoresSuccess != null) {
      return fetchStoresSuccess(stores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchStoresLoading<T> value) fetchStoresLoading,
    required TResult Function(FetchStoresSuccess<T> value) fetchStoresSuccess,
    required TResult Function(FetchStoresError<T> value) fetchStoresError,
  }) {
    return fetchStoresSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
  }) {
    return fetchStoresSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    required TResult orElse(),
  }) {
    if (fetchStoresSuccess != null) {
      return fetchStoresSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchStoresSuccess<T> implements StoresState<T> {
  const factory FetchStoresSuccess(final FetchStoresResponse stores) =
      _$FetchStoresSuccessImpl<T>;

  FetchStoresResponse get stores;
  @JsonKey(ignore: true)
  _$$FetchStoresSuccessImplCopyWith<T, _$FetchStoresSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchStoresErrorImplCopyWith<T, $Res> {
  factory _$$FetchStoresErrorImplCopyWith(_$FetchStoresErrorImpl<T> value,
          $Res Function(_$FetchStoresErrorImpl<T>) then) =
      __$$FetchStoresErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FetchStoresErrorImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res, _$FetchStoresErrorImpl<T>>
    implements _$$FetchStoresErrorImplCopyWith<T, $Res> {
  __$$FetchStoresErrorImplCopyWithImpl(_$FetchStoresErrorImpl<T> _value,
      $Res Function(_$FetchStoresErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FetchStoresErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchStoresErrorImpl<T> implements FetchStoresError<T> {
  const _$FetchStoresErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StoresState<$T>.fetchStoresError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStoresErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStoresErrorImplCopyWith<T, _$FetchStoresErrorImpl<T>> get copyWith =>
      __$$FetchStoresErrorImplCopyWithImpl<T, _$FetchStoresErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
  }) {
    return fetchStoresError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
  }) {
    return fetchStoresError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    required TResult orElse(),
  }) {
    if (fetchStoresError != null) {
      return fetchStoresError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchStoresLoading<T> value) fetchStoresLoading,
    required TResult Function(FetchStoresSuccess<T> value) fetchStoresSuccess,
    required TResult Function(FetchStoresError<T> value) fetchStoresError,
  }) {
    return fetchStoresError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
  }) {
    return fetchStoresError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    required TResult orElse(),
  }) {
    if (fetchStoresError != null) {
      return fetchStoresError(this);
    }
    return orElse();
  }
}

abstract class FetchStoresError<T> implements StoresState<T> {
  const factory FetchStoresError(final String error) =
      _$FetchStoresErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$FetchStoresErrorImplCopyWith<T, _$FetchStoresErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
