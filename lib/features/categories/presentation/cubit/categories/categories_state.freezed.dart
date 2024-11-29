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
mixin _$CategoriesState {
  CategoriesStateStatus get status => throw _privateConstructorUsedError;
  FetchCategoriesResponse? get categoriesResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {CategoriesStateStatus status,
      FetchCategoriesResponse? categoriesResponse,
      String? error});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categoriesResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoriesStateStatus,
      categoriesResponse: freezed == categoriesResponse
          ? _value.categoriesResponse
          : categoriesResponse // ignore: cast_nullable_to_non_nullable
              as FetchCategoriesResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesStateImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesStateImplCopyWith(_$CategoriesStateImpl value,
          $Res Function(_$CategoriesStateImpl) then) =
      __$$CategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoriesStateStatus status,
      FetchCategoriesResponse? categoriesResponse,
      String? error});
}

/// @nodoc
class __$$CategoriesStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateImpl>
    implements _$$CategoriesStateImplCopyWith<$Res> {
  __$$CategoriesStateImplCopyWithImpl(
      _$CategoriesStateImpl _value, $Res Function(_$CategoriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categoriesResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CategoriesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoriesStateStatus,
      categoriesResponse: freezed == categoriesResponse
          ? _value.categoriesResponse
          : categoriesResponse // ignore: cast_nullable_to_non_nullable
              as FetchCategoriesResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoriesStateImpl implements _CategoriesState {
  const _$CategoriesStateImpl(
      {required this.status, this.categoriesResponse, this.error});

  @override
  final CategoriesStateStatus status;
  @override
  final FetchCategoriesResponse? categoriesResponse;
  @override
  final String? error;

  @override
  String toString() {
    return 'CategoriesState(status: $status, categoriesResponse: $categoriesResponse, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.categoriesResponse, categoriesResponse) ||
                other.categoriesResponse == categoriesResponse) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, categoriesResponse, error);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      __$$CategoriesStateImplCopyWithImpl<_$CategoriesStateImpl>(
          this, _$identity);
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {required final CategoriesStateStatus status,
      final FetchCategoriesResponse? categoriesResponse,
      final String? error}) = _$CategoriesStateImpl;

  @override
  CategoriesStateStatus get status;
  @override
  FetchCategoriesResponse? get categoriesResponse;
  @override
  String? get error;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
