// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCategoriesLoading,
    required TResult Function(FetchCategoriesResponse fetchCategoriesResponse)
        fetchCategoriesSuccess,
    required TResult Function(dynamic error) fetchCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult? Function(dynamic error)? fetchCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCategoriesLoading,
    TResult Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult Function(dynamic error)? fetchCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchCategoriesLoading<T> value)
        fetchCategoriesLoading,
    required TResult Function(FetchCategoriesSuccess<T> value)
        fetchCategoriesSuccess,
    required TResult Function(FetchCategoriesError<T> value)
        fetchCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult? Function(FetchCategoriesError<T> value)? fetchCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult Function(FetchCategoriesError<T> value)? fetchCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<T, $Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState<T> value, $Res Function(CategoriesState<T>) then) =
      _$CategoriesStateCopyWithImpl<T, $Res, CategoriesState<T>>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<T, $Res, $Val extends CategoriesState<T>>
    implements $CategoriesStateCopyWith<T, $Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'CategoriesState<$T>.initial()';
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
    required TResult Function() fetchCategoriesLoading,
    required TResult Function(FetchCategoriesResponse fetchCategoriesResponse)
        fetchCategoriesSuccess,
    required TResult Function(dynamic error) fetchCategoriesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult? Function(dynamic error)? fetchCategoriesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCategoriesLoading,
    TResult Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult Function(dynamic error)? fetchCategoriesError,
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
    required TResult Function(FetchCategoriesLoading<T> value)
        fetchCategoriesLoading,
    required TResult Function(FetchCategoriesSuccess<T> value)
        fetchCategoriesSuccess,
    required TResult Function(FetchCategoriesError<T> value)
        fetchCategoriesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult? Function(FetchCategoriesError<T> value)? fetchCategoriesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult Function(FetchCategoriesError<T> value)? fetchCategoriesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CategoriesState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$FetchCategoriesLoadingImplCopyWith<T, $Res> {
  factory _$$FetchCategoriesLoadingImplCopyWith(
          _$FetchCategoriesLoadingImpl<T> value,
          $Res Function(_$FetchCategoriesLoadingImpl<T>) then) =
      __$$FetchCategoriesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FetchCategoriesLoadingImplCopyWithImpl<T, $Res>
    extends _$CategoriesStateCopyWithImpl<T, $Res,
        _$FetchCategoriesLoadingImpl<T>>
    implements _$$FetchCategoriesLoadingImplCopyWith<T, $Res> {
  __$$FetchCategoriesLoadingImplCopyWithImpl(
      _$FetchCategoriesLoadingImpl<T> _value,
      $Res Function(_$FetchCategoriesLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategoriesLoadingImpl<T> implements FetchCategoriesLoading<T> {
  const _$FetchCategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoriesState<$T>.fetchCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoriesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCategoriesLoading,
    required TResult Function(FetchCategoriesResponse fetchCategoriesResponse)
        fetchCategoriesSuccess,
    required TResult Function(dynamic error) fetchCategoriesError,
  }) {
    return fetchCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult? Function(dynamic error)? fetchCategoriesError,
  }) {
    return fetchCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCategoriesLoading,
    TResult Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult Function(dynamic error)? fetchCategoriesError,
    required TResult orElse(),
  }) {
    if (fetchCategoriesLoading != null) {
      return fetchCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchCategoriesLoading<T> value)
        fetchCategoriesLoading,
    required TResult Function(FetchCategoriesSuccess<T> value)
        fetchCategoriesSuccess,
    required TResult Function(FetchCategoriesError<T> value)
        fetchCategoriesError,
  }) {
    return fetchCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult? Function(FetchCategoriesError<T> value)? fetchCategoriesError,
  }) {
    return fetchCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult Function(FetchCategoriesError<T> value)? fetchCategoriesError,
    required TResult orElse(),
  }) {
    if (fetchCategoriesLoading != null) {
      return fetchCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class FetchCategoriesLoading<T> implements CategoriesState<T> {
  const factory FetchCategoriesLoading() = _$FetchCategoriesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$FetchCategoriesSuccessImplCopyWith<T, $Res> {
  factory _$$FetchCategoriesSuccessImplCopyWith(
          _$FetchCategoriesSuccessImpl<T> value,
          $Res Function(_$FetchCategoriesSuccessImpl<T>) then) =
      __$$FetchCategoriesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FetchCategoriesResponse fetchCategoriesResponse});
}

/// @nodoc
class __$$FetchCategoriesSuccessImplCopyWithImpl<T, $Res>
    extends _$CategoriesStateCopyWithImpl<T, $Res,
        _$FetchCategoriesSuccessImpl<T>>
    implements _$$FetchCategoriesSuccessImplCopyWith<T, $Res> {
  __$$FetchCategoriesSuccessImplCopyWithImpl(
      _$FetchCategoriesSuccessImpl<T> _value,
      $Res Function(_$FetchCategoriesSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchCategoriesResponse = null,
  }) {
    return _then(_$FetchCategoriesSuccessImpl<T>(
      null == fetchCategoriesResponse
          ? _value.fetchCategoriesResponse
          : fetchCategoriesResponse // ignore: cast_nullable_to_non_nullable
              as FetchCategoriesResponse,
    ));
  }
}

/// @nodoc

class _$FetchCategoriesSuccessImpl<T> implements FetchCategoriesSuccess<T> {
  const _$FetchCategoriesSuccessImpl(this.fetchCategoriesResponse);

  @override
  final FetchCategoriesResponse fetchCategoriesResponse;

  @override
  String toString() {
    return 'CategoriesState<$T>.fetchCategoriesSuccess(fetchCategoriesResponse: $fetchCategoriesResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoriesSuccessImpl<T> &&
            (identical(
                    other.fetchCategoriesResponse, fetchCategoriesResponse) ||
                other.fetchCategoriesResponse == fetchCategoriesResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchCategoriesResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCategoriesSuccessImplCopyWith<T, _$FetchCategoriesSuccessImpl<T>>
      get copyWith => __$$FetchCategoriesSuccessImplCopyWithImpl<T,
          _$FetchCategoriesSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCategoriesLoading,
    required TResult Function(FetchCategoriesResponse fetchCategoriesResponse)
        fetchCategoriesSuccess,
    required TResult Function(dynamic error) fetchCategoriesError,
  }) {
    return fetchCategoriesSuccess(fetchCategoriesResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult? Function(dynamic error)? fetchCategoriesError,
  }) {
    return fetchCategoriesSuccess?.call(fetchCategoriesResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCategoriesLoading,
    TResult Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult Function(dynamic error)? fetchCategoriesError,
    required TResult orElse(),
  }) {
    if (fetchCategoriesSuccess != null) {
      return fetchCategoriesSuccess(fetchCategoriesResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchCategoriesLoading<T> value)
        fetchCategoriesLoading,
    required TResult Function(FetchCategoriesSuccess<T> value)
        fetchCategoriesSuccess,
    required TResult Function(FetchCategoriesError<T> value)
        fetchCategoriesError,
  }) {
    return fetchCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult? Function(FetchCategoriesError<T> value)? fetchCategoriesError,
  }) {
    return fetchCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult Function(FetchCategoriesError<T> value)? fetchCategoriesError,
    required TResult orElse(),
  }) {
    if (fetchCategoriesSuccess != null) {
      return fetchCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchCategoriesSuccess<T> implements CategoriesState<T> {
  const factory FetchCategoriesSuccess(
          final FetchCategoriesResponse fetchCategoriesResponse) =
      _$FetchCategoriesSuccessImpl<T>;

  FetchCategoriesResponse get fetchCategoriesResponse;
  @JsonKey(ignore: true)
  _$$FetchCategoriesSuccessImplCopyWith<T, _$FetchCategoriesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCategoriesErrorImplCopyWith<T, $Res> {
  factory _$$FetchCategoriesErrorImplCopyWith(
          _$FetchCategoriesErrorImpl<T> value,
          $Res Function(_$FetchCategoriesErrorImpl<T>) then) =
      __$$FetchCategoriesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$FetchCategoriesErrorImplCopyWithImpl<T, $Res>
    extends _$CategoriesStateCopyWithImpl<T, $Res,
        _$FetchCategoriesErrorImpl<T>>
    implements _$$FetchCategoriesErrorImplCopyWith<T, $Res> {
  __$$FetchCategoriesErrorImplCopyWithImpl(_$FetchCategoriesErrorImpl<T> _value,
      $Res Function(_$FetchCategoriesErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$FetchCategoriesErrorImpl<T>(
      freezed == error ? _value.error! : error,
    ));
  }
}

/// @nodoc

class _$FetchCategoriesErrorImpl<T> implements FetchCategoriesError<T> {
  const _$FetchCategoriesErrorImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'CategoriesState<$T>.fetchCategoriesError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoriesErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCategoriesErrorImplCopyWith<T, _$FetchCategoriesErrorImpl<T>>
      get copyWith => __$$FetchCategoriesErrorImplCopyWithImpl<T,
          _$FetchCategoriesErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCategoriesLoading,
    required TResult Function(FetchCategoriesResponse fetchCategoriesResponse)
        fetchCategoriesSuccess,
    required TResult Function(dynamic error) fetchCategoriesError,
  }) {
    return fetchCategoriesError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult? Function(dynamic error)? fetchCategoriesError,
  }) {
    return fetchCategoriesError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCategoriesLoading,
    TResult Function(FetchCategoriesResponse fetchCategoriesResponse)?
        fetchCategoriesSuccess,
    TResult Function(dynamic error)? fetchCategoriesError,
    required TResult orElse(),
  }) {
    if (fetchCategoriesError != null) {
      return fetchCategoriesError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchCategoriesLoading<T> value)
        fetchCategoriesLoading,
    required TResult Function(FetchCategoriesSuccess<T> value)
        fetchCategoriesSuccess,
    required TResult Function(FetchCategoriesError<T> value)
        fetchCategoriesError,
  }) {
    return fetchCategoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult? Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult? Function(FetchCategoriesError<T> value)? fetchCategoriesError,
  }) {
    return fetchCategoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchCategoriesLoading<T> value)? fetchCategoriesLoading,
    TResult Function(FetchCategoriesSuccess<T> value)? fetchCategoriesSuccess,
    TResult Function(FetchCategoriesError<T> value)? fetchCategoriesError,
    required TResult orElse(),
  }) {
    if (fetchCategoriesError != null) {
      return fetchCategoriesError(this);
    }
    return orElse();
  }
}

abstract class FetchCategoriesError<T> implements CategoriesState<T> {
  const factory FetchCategoriesError(final dynamic error) =
      _$FetchCategoriesErrorImpl<T>;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$FetchCategoriesErrorImplCopyWith<T, _$FetchCategoriesErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
