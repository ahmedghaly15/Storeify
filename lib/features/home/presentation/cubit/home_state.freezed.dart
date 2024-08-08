// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchHomeDataLoading,
    required TResult Function(FetchHomeResponse homeResponse)
        fetchHomeDataSuccess,
    required TResult Function(String error) fetchHomeDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchHomeDataLoading,
    TResult? Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult? Function(String error)? fetchHomeDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchHomeDataLoading,
    TResult Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult Function(String error)? fetchHomeDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchHomeDataLoading<T> value)
        fetchHomeDataLoading,
    required TResult Function(FetchHomeDataSuccess<T> value)
        fetchHomeDataSuccess,
    required TResult Function(FetchHomeDataError<T> value) fetchHomeDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult? Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult? Function(FetchHomeDataError<T> value)? fetchHomeDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult Function(FetchHomeDataError<T> value)? fetchHomeDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'HomeState<$T>.initial()';
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
    required TResult Function() fetchHomeDataLoading,
    required TResult Function(FetchHomeResponse homeResponse)
        fetchHomeDataSuccess,
    required TResult Function(String error) fetchHomeDataError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchHomeDataLoading,
    TResult? Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult? Function(String error)? fetchHomeDataError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchHomeDataLoading,
    TResult Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult Function(String error)? fetchHomeDataError,
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
    required TResult Function(FetchHomeDataLoading<T> value)
        fetchHomeDataLoading,
    required TResult Function(FetchHomeDataSuccess<T> value)
        fetchHomeDataSuccess,
    required TResult Function(FetchHomeDataError<T> value) fetchHomeDataError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult? Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult? Function(FetchHomeDataError<T> value)? fetchHomeDataError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult Function(FetchHomeDataError<T> value)? fetchHomeDataError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$FetchHomeDataLoadingImplCopyWith<T, $Res> {
  factory _$$FetchHomeDataLoadingImplCopyWith(
          _$FetchHomeDataLoadingImpl<T> value,
          $Res Function(_$FetchHomeDataLoadingImpl<T>) then) =
      __$$FetchHomeDataLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FetchHomeDataLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$FetchHomeDataLoadingImpl<T>>
    implements _$$FetchHomeDataLoadingImplCopyWith<T, $Res> {
  __$$FetchHomeDataLoadingImplCopyWithImpl(_$FetchHomeDataLoadingImpl<T> _value,
      $Res Function(_$FetchHomeDataLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchHomeDataLoadingImpl<T> implements FetchHomeDataLoading<T> {
  const _$FetchHomeDataLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.fetchHomeDataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomeDataLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchHomeDataLoading,
    required TResult Function(FetchHomeResponse homeResponse)
        fetchHomeDataSuccess,
    required TResult Function(String error) fetchHomeDataError,
  }) {
    return fetchHomeDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchHomeDataLoading,
    TResult? Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult? Function(String error)? fetchHomeDataError,
  }) {
    return fetchHomeDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchHomeDataLoading,
    TResult Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult Function(String error)? fetchHomeDataError,
    required TResult orElse(),
  }) {
    if (fetchHomeDataLoading != null) {
      return fetchHomeDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchHomeDataLoading<T> value)
        fetchHomeDataLoading,
    required TResult Function(FetchHomeDataSuccess<T> value)
        fetchHomeDataSuccess,
    required TResult Function(FetchHomeDataError<T> value) fetchHomeDataError,
  }) {
    return fetchHomeDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult? Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult? Function(FetchHomeDataError<T> value)? fetchHomeDataError,
  }) {
    return fetchHomeDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult Function(FetchHomeDataError<T> value)? fetchHomeDataError,
    required TResult orElse(),
  }) {
    if (fetchHomeDataLoading != null) {
      return fetchHomeDataLoading(this);
    }
    return orElse();
  }
}

abstract class FetchHomeDataLoading<T> implements HomeState<T> {
  const factory FetchHomeDataLoading() = _$FetchHomeDataLoadingImpl<T>;
}

/// @nodoc
abstract class _$$FetchHomeDataSuccessImplCopyWith<T, $Res> {
  factory _$$FetchHomeDataSuccessImplCopyWith(
          _$FetchHomeDataSuccessImpl<T> value,
          $Res Function(_$FetchHomeDataSuccessImpl<T>) then) =
      __$$FetchHomeDataSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FetchHomeResponse homeResponse});
}

/// @nodoc
class __$$FetchHomeDataSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$FetchHomeDataSuccessImpl<T>>
    implements _$$FetchHomeDataSuccessImplCopyWith<T, $Res> {
  __$$FetchHomeDataSuccessImplCopyWithImpl(_$FetchHomeDataSuccessImpl<T> _value,
      $Res Function(_$FetchHomeDataSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeResponse = null,
  }) {
    return _then(_$FetchHomeDataSuccessImpl<T>(
      null == homeResponse
          ? _value.homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as FetchHomeResponse,
    ));
  }
}

/// @nodoc

class _$FetchHomeDataSuccessImpl<T> implements FetchHomeDataSuccess<T> {
  const _$FetchHomeDataSuccessImpl(this.homeResponse);

  @override
  final FetchHomeResponse homeResponse;

  @override
  String toString() {
    return 'HomeState<$T>.fetchHomeDataSuccess(homeResponse: $homeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomeDataSuccessImpl<T> &&
            (identical(other.homeResponse, homeResponse) ||
                other.homeResponse == homeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchHomeDataSuccessImplCopyWith<T, _$FetchHomeDataSuccessImpl<T>>
      get copyWith => __$$FetchHomeDataSuccessImplCopyWithImpl<T,
          _$FetchHomeDataSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchHomeDataLoading,
    required TResult Function(FetchHomeResponse homeResponse)
        fetchHomeDataSuccess,
    required TResult Function(String error) fetchHomeDataError,
  }) {
    return fetchHomeDataSuccess(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchHomeDataLoading,
    TResult? Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult? Function(String error)? fetchHomeDataError,
  }) {
    return fetchHomeDataSuccess?.call(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchHomeDataLoading,
    TResult Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult Function(String error)? fetchHomeDataError,
    required TResult orElse(),
  }) {
    if (fetchHomeDataSuccess != null) {
      return fetchHomeDataSuccess(homeResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchHomeDataLoading<T> value)
        fetchHomeDataLoading,
    required TResult Function(FetchHomeDataSuccess<T> value)
        fetchHomeDataSuccess,
    required TResult Function(FetchHomeDataError<T> value) fetchHomeDataError,
  }) {
    return fetchHomeDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult? Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult? Function(FetchHomeDataError<T> value)? fetchHomeDataError,
  }) {
    return fetchHomeDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult Function(FetchHomeDataError<T> value)? fetchHomeDataError,
    required TResult orElse(),
  }) {
    if (fetchHomeDataSuccess != null) {
      return fetchHomeDataSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchHomeDataSuccess<T> implements HomeState<T> {
  const factory FetchHomeDataSuccess(final FetchHomeResponse homeResponse) =
      _$FetchHomeDataSuccessImpl<T>;

  FetchHomeResponse get homeResponse;
  @JsonKey(ignore: true)
  _$$FetchHomeDataSuccessImplCopyWith<T, _$FetchHomeDataSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchHomeDataErrorImplCopyWith<T, $Res> {
  factory _$$FetchHomeDataErrorImplCopyWith(_$FetchHomeDataErrorImpl<T> value,
          $Res Function(_$FetchHomeDataErrorImpl<T>) then) =
      __$$FetchHomeDataErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FetchHomeDataErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$FetchHomeDataErrorImpl<T>>
    implements _$$FetchHomeDataErrorImplCopyWith<T, $Res> {
  __$$FetchHomeDataErrorImplCopyWithImpl(_$FetchHomeDataErrorImpl<T> _value,
      $Res Function(_$FetchHomeDataErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FetchHomeDataErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchHomeDataErrorImpl<T> implements FetchHomeDataError<T> {
  const _$FetchHomeDataErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState<$T>.fetchHomeDataError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomeDataErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchHomeDataErrorImplCopyWith<T, _$FetchHomeDataErrorImpl<T>>
      get copyWith => __$$FetchHomeDataErrorImplCopyWithImpl<T,
          _$FetchHomeDataErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchHomeDataLoading,
    required TResult Function(FetchHomeResponse homeResponse)
        fetchHomeDataSuccess,
    required TResult Function(String error) fetchHomeDataError,
  }) {
    return fetchHomeDataError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchHomeDataLoading,
    TResult? Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult? Function(String error)? fetchHomeDataError,
  }) {
    return fetchHomeDataError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchHomeDataLoading,
    TResult Function(FetchHomeResponse homeResponse)? fetchHomeDataSuccess,
    TResult Function(String error)? fetchHomeDataError,
    required TResult orElse(),
  }) {
    if (fetchHomeDataError != null) {
      return fetchHomeDataError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchHomeDataLoading<T> value)
        fetchHomeDataLoading,
    required TResult Function(FetchHomeDataSuccess<T> value)
        fetchHomeDataSuccess,
    required TResult Function(FetchHomeDataError<T> value) fetchHomeDataError,
  }) {
    return fetchHomeDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult? Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult? Function(FetchHomeDataError<T> value)? fetchHomeDataError,
  }) {
    return fetchHomeDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchHomeDataLoading<T> value)? fetchHomeDataLoading,
    TResult Function(FetchHomeDataSuccess<T> value)? fetchHomeDataSuccess,
    TResult Function(FetchHomeDataError<T> value)? fetchHomeDataError,
    required TResult orElse(),
  }) {
    if (fetchHomeDataError != null) {
      return fetchHomeDataError(this);
    }
    return orElse();
  }
}

abstract class FetchHomeDataError<T> implements HomeState<T> {
  const factory FetchHomeDataError(final String error) =
      _$FetchHomeDataErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$FetchHomeDataErrorImplCopyWith<T, _$FetchHomeDataErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
