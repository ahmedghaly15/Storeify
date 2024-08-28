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
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(FetchStoresLoading<T> value) fetchStoresLoading,
    required TResult Function(FetchStoresSuccess<T> value) fetchStoresSuccess,
    required TResult Function(FetchStoresError<T> value) fetchStoresError,
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
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
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
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
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
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
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
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
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
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
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
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
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
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
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
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
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
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
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
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
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
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
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
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
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
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
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
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
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
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
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
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
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
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
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
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
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
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
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
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
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
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

/// @nodoc
abstract class _$$FetchCategoryStoresLoadingImplCopyWith<T, $Res> {
  factory _$$FetchCategoryStoresLoadingImplCopyWith(
          _$FetchCategoryStoresLoadingImpl<T> value,
          $Res Function(_$FetchCategoryStoresLoadingImpl<T>) then) =
      __$$FetchCategoryStoresLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FetchCategoryStoresLoadingImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res,
        _$FetchCategoryStoresLoadingImpl<T>>
    implements _$$FetchCategoryStoresLoadingImplCopyWith<T, $Res> {
  __$$FetchCategoryStoresLoadingImplCopyWithImpl(
      _$FetchCategoryStoresLoadingImpl<T> _value,
      $Res Function(_$FetchCategoryStoresLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCategoryStoresLoadingImpl<T>
    implements FetchCategoryStoresLoading<T> {
  const _$FetchCategoryStoresLoadingImpl();

  @override
  String toString() {
    return 'StoresState<$T>.fetchCategoryStoresLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoryStoresLoadingImpl<T>);
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
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (fetchCategoryStoresLoading != null) {
      return fetchCategoryStoresLoading();
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (fetchCategoryStoresLoading != null) {
      return fetchCategoryStoresLoading(this);
    }
    return orElse();
  }
}

abstract class FetchCategoryStoresLoading<T> implements StoresState<T> {
  const factory FetchCategoryStoresLoading() =
      _$FetchCategoryStoresLoadingImpl<T>;
}

/// @nodoc
abstract class _$$FetchCategoryStoresSuccessImplCopyWith<T, $Res> {
  factory _$$FetchCategoryStoresSuccessImplCopyWith(
          _$FetchCategoryStoresSuccessImpl<T> value,
          $Res Function(_$FetchCategoryStoresSuccessImpl<T>) then) =
      __$$FetchCategoryStoresSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FetchStoresResponse categoryStores});
}

/// @nodoc
class __$$FetchCategoryStoresSuccessImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res,
        _$FetchCategoryStoresSuccessImpl<T>>
    implements _$$FetchCategoryStoresSuccessImplCopyWith<T, $Res> {
  __$$FetchCategoryStoresSuccessImplCopyWithImpl(
      _$FetchCategoryStoresSuccessImpl<T> _value,
      $Res Function(_$FetchCategoryStoresSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryStores = null,
  }) {
    return _then(_$FetchCategoryStoresSuccessImpl<T>(
      null == categoryStores
          ? _value.categoryStores
          : categoryStores // ignore: cast_nullable_to_non_nullable
              as FetchStoresResponse,
    ));
  }
}

/// @nodoc

class _$FetchCategoryStoresSuccessImpl<T>
    implements FetchCategoryStoresSuccess<T> {
  const _$FetchCategoryStoresSuccessImpl(this.categoryStores);

  @override
  final FetchStoresResponse categoryStores;

  @override
  String toString() {
    return 'StoresState<$T>.fetchCategoryStoresSuccess(categoryStores: $categoryStores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoryStoresSuccessImpl<T> &&
            (identical(other.categoryStores, categoryStores) ||
                other.categoryStores == categoryStores));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryStores);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCategoryStoresSuccessImplCopyWith<T,
          _$FetchCategoryStoresSuccessImpl<T>>
      get copyWith => __$$FetchCategoryStoresSuccessImplCopyWithImpl<T,
          _$FetchCategoryStoresSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresSuccess(categoryStores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresSuccess?.call(categoryStores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (fetchCategoryStoresSuccess != null) {
      return fetchCategoryStoresSuccess(categoryStores);
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (fetchCategoryStoresSuccess != null) {
      return fetchCategoryStoresSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchCategoryStoresSuccess<T> implements StoresState<T> {
  const factory FetchCategoryStoresSuccess(
          final FetchStoresResponse categoryStores) =
      _$FetchCategoryStoresSuccessImpl<T>;

  FetchStoresResponse get categoryStores;
  @JsonKey(ignore: true)
  _$$FetchCategoryStoresSuccessImplCopyWith<T,
          _$FetchCategoryStoresSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCategoryStoresErrorImplCopyWith<T, $Res> {
  factory _$$FetchCategoryStoresErrorImplCopyWith(
          _$FetchCategoryStoresErrorImpl<T> value,
          $Res Function(_$FetchCategoryStoresErrorImpl<T>) then) =
      __$$FetchCategoryStoresErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FetchCategoryStoresErrorImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res,
        _$FetchCategoryStoresErrorImpl<T>>
    implements _$$FetchCategoryStoresErrorImplCopyWith<T, $Res> {
  __$$FetchCategoryStoresErrorImplCopyWithImpl(
      _$FetchCategoryStoresErrorImpl<T> _value,
      $Res Function(_$FetchCategoryStoresErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FetchCategoryStoresErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchCategoryStoresErrorImpl<T> implements FetchCategoryStoresError<T> {
  const _$FetchCategoryStoresErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StoresState<$T>.fetchCategoryStoresError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCategoryStoresErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCategoryStoresErrorImplCopyWith<T, _$FetchCategoryStoresErrorImpl<T>>
      get copyWith => __$$FetchCategoryStoresErrorImplCopyWithImpl<T,
          _$FetchCategoryStoresErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (fetchCategoryStoresError != null) {
      return fetchCategoryStoresError(error);
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
  }) {
    return fetchCategoryStoresError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (fetchCategoryStoresError != null) {
      return fetchCategoryStoresError(this);
    }
    return orElse();
  }
}

abstract class FetchCategoryStoresError<T> implements StoresState<T> {
  const factory FetchCategoryStoresError(final String error) =
      _$FetchCategoryStoresErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$FetchCategoryStoresErrorImplCopyWith<T, _$FetchCategoryStoresErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentSelectedStoreImplCopyWith<T, $Res> {
  factory _$$UpdateCurrentSelectedStoreImplCopyWith(
          _$UpdateCurrentSelectedStoreImpl<T> value,
          $Res Function(_$UpdateCurrentSelectedStoreImpl<T>) then) =
      __$$UpdateCurrentSelectedStoreImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$UpdateCurrentSelectedStoreImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res,
        _$UpdateCurrentSelectedStoreImpl<T>>
    implements _$$UpdateCurrentSelectedStoreImplCopyWith<T, $Res> {
  __$$UpdateCurrentSelectedStoreImplCopyWithImpl(
      _$UpdateCurrentSelectedStoreImpl<T> _value,
      $Res Function(_$UpdateCurrentSelectedStoreImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$UpdateCurrentSelectedStoreImpl<T>(
      null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentSelectedStoreImpl<T>
    implements UpdateCurrentSelectedStore<T> {
  const _$UpdateCurrentSelectedStoreImpl(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'StoresState<$T>.updateCurrentSelectedStore(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentSelectedStoreImpl<T> &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentSelectedStoreImplCopyWith<T,
          _$UpdateCurrentSelectedStoreImpl<T>>
      get copyWith => __$$UpdateCurrentSelectedStoreImplCopyWithImpl<T,
          _$UpdateCurrentSelectedStoreImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
  }) {
    return updateCurrentSelectedStore(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
  }) {
    return updateCurrentSelectedStore?.call(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (updateCurrentSelectedStore != null) {
      return updateCurrentSelectedStore(currentIndex);
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
  }) {
    return updateCurrentSelectedStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
  }) {
    return updateCurrentSelectedStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (updateCurrentSelectedStore != null) {
      return updateCurrentSelectedStore(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrentSelectedStore<T> implements StoresState<T> {
  const factory UpdateCurrentSelectedStore(final int currentIndex) =
      _$UpdateCurrentSelectedStoreImpl<T>;

  int get currentIndex;
  @JsonKey(ignore: true)
  _$$UpdateCurrentSelectedStoreImplCopyWith<T,
          _$UpdateCurrentSelectedStoreImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentStoreIndexImplCopyWith<T, $Res> {
  factory _$$UpdateCurrentStoreIndexImplCopyWith(
          _$UpdateCurrentStoreIndexImpl<T> value,
          $Res Function(_$UpdateCurrentStoreIndexImpl<T>) then) =
      __$$UpdateCurrentStoreIndexImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$UpdateCurrentStoreIndexImplCopyWithImpl<T, $Res>
    extends _$StoresStateCopyWithImpl<T, $Res, _$UpdateCurrentStoreIndexImpl<T>>
    implements _$$UpdateCurrentStoreIndexImplCopyWith<T, $Res> {
  __$$UpdateCurrentStoreIndexImplCopyWithImpl(
      _$UpdateCurrentStoreIndexImpl<T> _value,
      $Res Function(_$UpdateCurrentStoreIndexImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$UpdateCurrentStoreIndexImpl<T>(
      null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentStoreIndexImpl<T> implements UpdateCurrentStoreIndex<T> {
  const _$UpdateCurrentStoreIndexImpl(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'StoresState<$T>.updateCurrentStoreIndex(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentStoreIndexImpl<T> &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentStoreIndexImplCopyWith<T, _$UpdateCurrentStoreIndexImpl<T>>
      get copyWith => __$$UpdateCurrentStoreIndexImplCopyWithImpl<T,
          _$UpdateCurrentStoreIndexImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchStoresLoading,
    required TResult Function(FetchStoresResponse stores) fetchStoresSuccess,
    required TResult Function(String error) fetchStoresError,
    required TResult Function() fetchCategoryStoresLoading,
    required TResult Function(FetchStoresResponse categoryStores)
        fetchCategoryStoresSuccess,
    required TResult Function(String error) fetchCategoryStoresError,
    required TResult Function(int currentIndex) updateCurrentSelectedStore,
    required TResult Function(int currentIndex) updateCurrentStoreIndex,
  }) {
    return updateCurrentStoreIndex(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchStoresLoading,
    TResult? Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult? Function(String error)? fetchStoresError,
    TResult? Function()? fetchCategoryStoresLoading,
    TResult? Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult? Function(String error)? fetchCategoryStoresError,
    TResult? Function(int currentIndex)? updateCurrentSelectedStore,
    TResult? Function(int currentIndex)? updateCurrentStoreIndex,
  }) {
    return updateCurrentStoreIndex?.call(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchStoresLoading,
    TResult Function(FetchStoresResponse stores)? fetchStoresSuccess,
    TResult Function(String error)? fetchStoresError,
    TResult Function()? fetchCategoryStoresLoading,
    TResult Function(FetchStoresResponse categoryStores)?
        fetchCategoryStoresSuccess,
    TResult Function(String error)? fetchCategoryStoresError,
    TResult Function(int currentIndex)? updateCurrentSelectedStore,
    TResult Function(int currentIndex)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (updateCurrentStoreIndex != null) {
      return updateCurrentStoreIndex(currentIndex);
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
    required TResult Function(FetchCategoryStoresLoading<T> value)
        fetchCategoryStoresLoading,
    required TResult Function(FetchCategoryStoresSuccess<T> value)
        fetchCategoryStoresSuccess,
    required TResult Function(FetchCategoryStoresError<T> value)
        fetchCategoryStoresError,
    required TResult Function(UpdateCurrentSelectedStore<T> value)
        updateCurrentSelectedStore,
    required TResult Function(UpdateCurrentStoreIndex<T> value)
        updateCurrentStoreIndex,
  }) {
    return updateCurrentStoreIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult? Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult? Function(FetchStoresError<T> value)? fetchStoresError,
    TResult? Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult? Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult? Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult? Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult? Function(UpdateCurrentStoreIndex<T> value)?
        updateCurrentStoreIndex,
  }) {
    return updateCurrentStoreIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(FetchStoresLoading<T> value)? fetchStoresLoading,
    TResult Function(FetchStoresSuccess<T> value)? fetchStoresSuccess,
    TResult Function(FetchStoresError<T> value)? fetchStoresError,
    TResult Function(FetchCategoryStoresLoading<T> value)?
        fetchCategoryStoresLoading,
    TResult Function(FetchCategoryStoresSuccess<T> value)?
        fetchCategoryStoresSuccess,
    TResult Function(FetchCategoryStoresError<T> value)?
        fetchCategoryStoresError,
    TResult Function(UpdateCurrentSelectedStore<T> value)?
        updateCurrentSelectedStore,
    TResult Function(UpdateCurrentStoreIndex<T> value)? updateCurrentStoreIndex,
    required TResult orElse(),
  }) {
    if (updateCurrentStoreIndex != null) {
      return updateCurrentStoreIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrentStoreIndex<T> implements StoresState<T> {
  const factory UpdateCurrentStoreIndex(final int currentIndex) =
      _$UpdateCurrentStoreIndexImpl<T>;

  int get currentIndex;
  @JsonKey(ignore: true)
  _$$UpdateCurrentStoreIndexImplCopyWith<T, _$UpdateCurrentStoreIndexImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
