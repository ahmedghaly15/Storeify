// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse searchResult) searchSuccess,
    required TResult Function(String error) searchError,
    required TResult Function(String text) updateSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse searchResult)? searchSuccess,
    TResult? Function(String error)? searchError,
    TResult? Function(String text)? updateSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse searchResult)? searchSuccess,
    TResult Function(String error)? searchError,
    TResult Function(String text)? updateSearchText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
    required TResult Function(UpdateSearchText<T> value) updateSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
    TResult? Function(UpdateSearchText<T> value)? updateSearchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    TResult Function(UpdateSearchText<T> value)? updateSearchText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<T, $Res> {
  factory $SearchStateCopyWith(
          SearchState<T> value, $Res Function(SearchState<T>) then) =
      _$SearchStateCopyWithImpl<T, $Res, SearchState<T>>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<T, $Res, $Val extends SearchState<T>>
    implements $SearchStateCopyWith<T, $Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
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
    extends _$SearchStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState<$T>.initial()';
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
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse searchResult) searchSuccess,
    required TResult Function(String error) searchError,
    required TResult Function(String text) updateSearchText,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse searchResult)? searchSuccess,
    TResult? Function(String error)? searchError,
    TResult? Function(String text)? updateSearchText,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse searchResult)? searchSuccess,
    TResult Function(String error)? searchError,
    TResult Function(String text)? updateSearchText,
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
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
    required TResult Function(UpdateSearchText<T> value) updateSearchText,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
    TResult? Function(UpdateSearchText<T> value)? updateSearchText,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    TResult Function(UpdateSearchText<T> value)? updateSearchText,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SearchState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<T, $Res> {
  factory _$$SearchLoadingImplCopyWith(_$SearchLoadingImpl<T> value,
          $Res Function(_$SearchLoadingImpl<T>) then) =
      __$$SearchLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchLoadingImpl<T>>
    implements _$$SearchLoadingImplCopyWith<T, $Res> {
  __$$SearchLoadingImplCopyWithImpl(_$SearchLoadingImpl<T> _value,
      $Res Function(_$SearchLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl<T> implements SearchLoading<T> {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState<$T>.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse searchResult) searchSuccess,
    required TResult Function(String error) searchError,
    required TResult Function(String text) updateSearchText,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse searchResult)? searchSuccess,
    TResult? Function(String error)? searchError,
    TResult? Function(String text)? updateSearchText,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse searchResult)? searchSuccess,
    TResult Function(String error)? searchError,
    TResult Function(String text)? updateSearchText,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
    required TResult Function(UpdateSearchText<T> value) updateSearchText,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
    TResult? Function(UpdateSearchText<T> value)? updateSearchText,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    TResult Function(UpdateSearchText<T> value)? updateSearchText,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading<T> implements SearchState<T> {
  const factory SearchLoading() = _$SearchLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<T, $Res> {
  factory _$$SearchSuccessImplCopyWith(_$SearchSuccessImpl<T> value,
          $Res Function(_$SearchSuccessImpl<T>) then) =
      __$$SearchSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SearchResponse searchResult});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchSuccessImpl<T>>
    implements _$$SearchSuccessImplCopyWith<T, $Res> {
  __$$SearchSuccessImplCopyWithImpl(_$SearchSuccessImpl<T> _value,
      $Res Function(_$SearchSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
  }) {
    return _then(_$SearchSuccessImpl<T>(
      null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResponse,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl<T> implements SearchSuccess<T> {
  const _$SearchSuccessImpl(this.searchResult);

  @override
  final SearchResponse searchResult;

  @override
  String toString() {
    return 'SearchState<$T>.searchSuccess(searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl<T> &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResult);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<T, _$SearchSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse searchResult) searchSuccess,
    required TResult Function(String error) searchError,
    required TResult Function(String text) updateSearchText,
  }) {
    return searchSuccess(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse searchResult)? searchSuccess,
    TResult? Function(String error)? searchError,
    TResult? Function(String text)? updateSearchText,
  }) {
    return searchSuccess?.call(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse searchResult)? searchSuccess,
    TResult Function(String error)? searchError,
    TResult Function(String text)? updateSearchText,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(searchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
    required TResult Function(UpdateSearchText<T> value) updateSearchText,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
    TResult? Function(UpdateSearchText<T> value)? updateSearchText,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    TResult Function(UpdateSearchText<T> value)? updateSearchText,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess<T> implements SearchState<T> {
  const factory SearchSuccess(final SearchResponse searchResult) =
      _$SearchSuccessImpl<T>;

  SearchResponse get searchResult;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<T, $Res> {
  factory _$$SearchErrorImplCopyWith(_$SearchErrorImpl<T> value,
          $Res Function(_$SearchErrorImpl<T>) then) =
      __$$SearchErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$SearchErrorImpl<T>>
    implements _$$SearchErrorImplCopyWith<T, $Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl<T> _value, $Res Function(_$SearchErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl<T> implements SearchError<T> {
  const _$SearchErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState<$T>.searchError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<T, _$SearchErrorImpl<T>> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<T, _$SearchErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse searchResult) searchSuccess,
    required TResult Function(String error) searchError,
    required TResult Function(String text) updateSearchText,
  }) {
    return searchError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse searchResult)? searchSuccess,
    TResult? Function(String error)? searchError,
    TResult? Function(String text)? updateSearchText,
  }) {
    return searchError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse searchResult)? searchSuccess,
    TResult Function(String error)? searchError,
    TResult Function(String text)? updateSearchText,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
    required TResult Function(UpdateSearchText<T> value) updateSearchText,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
    TResult? Function(UpdateSearchText<T> value)? updateSearchText,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    TResult Function(UpdateSearchText<T> value)? updateSearchText,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class SearchError<T> implements SearchState<T> {
  const factory SearchError(final String error) = _$SearchErrorImpl<T>;

  String get error;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchErrorImplCopyWith<T, _$SearchErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSearchTextImplCopyWith<T, $Res> {
  factory _$$UpdateSearchTextImplCopyWith(_$UpdateSearchTextImpl<T> value,
          $Res Function(_$UpdateSearchTextImpl<T>) then) =
      __$$UpdateSearchTextImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$UpdateSearchTextImplCopyWithImpl<T, $Res>
    extends _$SearchStateCopyWithImpl<T, $Res, _$UpdateSearchTextImpl<T>>
    implements _$$UpdateSearchTextImplCopyWith<T, $Res> {
  __$$UpdateSearchTextImplCopyWithImpl(_$UpdateSearchTextImpl<T> _value,
      $Res Function(_$UpdateSearchTextImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$UpdateSearchTextImpl<T>(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSearchTextImpl<T> implements UpdateSearchText<T> {
  const _$UpdateSearchTextImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'SearchState<$T>.updateSearchText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSearchTextImpl<T> &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSearchTextImplCopyWith<T, _$UpdateSearchTextImpl<T>> get copyWith =>
      __$$UpdateSearchTextImplCopyWithImpl<T, _$UpdateSearchTextImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponse searchResult) searchSuccess,
    required TResult Function(String error) searchError,
    required TResult Function(String text) updateSearchText,
  }) {
    return updateSearchText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponse searchResult)? searchSuccess,
    TResult? Function(String error)? searchError,
    TResult? Function(String text)? updateSearchText,
  }) {
    return updateSearchText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponse searchResult)? searchSuccess,
    TResult Function(String error)? searchError,
    TResult Function(String text)? updateSearchText,
    required TResult orElse(),
  }) {
    if (updateSearchText != null) {
      return updateSearchText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SearchLoading<T> value) searchLoading,
    required TResult Function(SearchSuccess<T> value) searchSuccess,
    required TResult Function(SearchError<T> value) searchError,
    required TResult Function(UpdateSearchText<T> value) updateSearchText,
  }) {
    return updateSearchText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SearchLoading<T> value)? searchLoading,
    TResult? Function(SearchSuccess<T> value)? searchSuccess,
    TResult? Function(SearchError<T> value)? searchError,
    TResult? Function(UpdateSearchText<T> value)? updateSearchText,
  }) {
    return updateSearchText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SearchLoading<T> value)? searchLoading,
    TResult Function(SearchSuccess<T> value)? searchSuccess,
    TResult Function(SearchError<T> value)? searchError,
    TResult Function(UpdateSearchText<T> value)? updateSearchText,
    required TResult orElse(),
  }) {
    if (updateSearchText != null) {
      return updateSearchText(this);
    }
    return orElse();
  }
}

abstract class UpdateSearchText<T> implements SearchState<T> {
  const factory UpdateSearchText(final String text) = _$UpdateSearchTextImpl<T>;

  String get text;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSearchTextImplCopyWith<T, _$UpdateSearchTextImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
