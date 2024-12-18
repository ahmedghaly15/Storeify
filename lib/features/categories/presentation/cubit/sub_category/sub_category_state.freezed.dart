// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubCategoryState {
  SubCategoryStateStatus get status => throw _privateConstructorUsedError;
  FetchSubCategoryResponse? get subCategoryResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  SubCategory? get selectedSubCategory => throw _privateConstructorUsedError;

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoryStateCopyWith<SubCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryStateCopyWith<$Res> {
  factory $SubCategoryStateCopyWith(
          SubCategoryState value, $Res Function(SubCategoryState) then) =
      _$SubCategoryStateCopyWithImpl<$Res, SubCategoryState>;
  @useResult
  $Res call(
      {SubCategoryStateStatus status,
      FetchSubCategoryResponse? subCategoryResponse,
      String? error,
      SubCategory? selectedSubCategory});

  $SubCategoryCopyWith<$Res>? get selectedSubCategory;
}

/// @nodoc
class _$SubCategoryStateCopyWithImpl<$Res, $Val extends SubCategoryState>
    implements $SubCategoryStateCopyWith<$Res> {
  _$SubCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? subCategoryResponse = freezed,
    Object? error = freezed,
    Object? selectedSubCategory = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubCategoryStateStatus,
      subCategoryResponse: freezed == subCategoryResponse
          ? _value.subCategoryResponse
          : subCategoryResponse // ignore: cast_nullable_to_non_nullable
              as FetchSubCategoryResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedSubCategory: freezed == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
    ) as $Val);
  }

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res>? get selectedSubCategory {
    if (_value.selectedSubCategory == null) {
      return null;
    }

    return $SubCategoryCopyWith<$Res>(_value.selectedSubCategory!, (value) {
      return _then(_value.copyWith(selectedSubCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubCategoryStateImplCopyWith<$Res>
    implements $SubCategoryStateCopyWith<$Res> {
  factory _$$SubCategoryStateImplCopyWith(_$SubCategoryStateImpl value,
          $Res Function(_$SubCategoryStateImpl) then) =
      __$$SubCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubCategoryStateStatus status,
      FetchSubCategoryResponse? subCategoryResponse,
      String? error,
      SubCategory? selectedSubCategory});

  @override
  $SubCategoryCopyWith<$Res>? get selectedSubCategory;
}

/// @nodoc
class __$$SubCategoryStateImplCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$SubCategoryStateImpl>
    implements _$$SubCategoryStateImplCopyWith<$Res> {
  __$$SubCategoryStateImplCopyWithImpl(_$SubCategoryStateImpl _value,
      $Res Function(_$SubCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? subCategoryResponse = freezed,
    Object? error = freezed,
    Object? selectedSubCategory = freezed,
  }) {
    return _then(_$SubCategoryStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubCategoryStateStatus,
      subCategoryResponse: freezed == subCategoryResponse
          ? _value.subCategoryResponse
          : subCategoryResponse // ignore: cast_nullable_to_non_nullable
              as FetchSubCategoryResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedSubCategory: freezed == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
    ));
  }
}

/// @nodoc

class _$SubCategoryStateImpl implements _SubCategoryState {
  const _$SubCategoryStateImpl(
      {required this.status,
      this.subCategoryResponse,
      this.error,
      this.selectedSubCategory});

  @override
  final SubCategoryStateStatus status;
  @override
  final FetchSubCategoryResponse? subCategoryResponse;
  @override
  final String? error;
  @override
  final SubCategory? selectedSubCategory;

  @override
  String toString() {
    return 'SubCategoryState(status: $status, subCategoryResponse: $subCategoryResponse, error: $error, selectedSubCategory: $selectedSubCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subCategoryResponse, subCategoryResponse) ||
                other.subCategoryResponse == subCategoryResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedSubCategory, selectedSubCategory) ||
                other.selectedSubCategory == selectedSubCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, subCategoryResponse, error, selectedSubCategory);

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      __$$SubCategoryStateImplCopyWithImpl<_$SubCategoryStateImpl>(
          this, _$identity);
}

abstract class _SubCategoryState implements SubCategoryState {
  const factory _SubCategoryState(
      {required final SubCategoryStateStatus status,
      final FetchSubCategoryResponse? subCategoryResponse,
      final String? error,
      final SubCategory? selectedSubCategory}) = _$SubCategoryStateImpl;

  @override
  SubCategoryStateStatus get status;
  @override
  FetchSubCategoryResponse? get subCategoryResponse;
  @override
  String? get error;
  @override
  SubCategory? get selectedSubCategory;

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
