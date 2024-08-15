// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_sub_category_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchSubCategoryParams {
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_category_id')
  int get subCategoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchSubCategoryParamsCopyWith<FetchSubCategoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSubCategoryParamsCopyWith<$Res> {
  factory $FetchSubCategoryParamsCopyWith(FetchSubCategoryParams value,
          $Res Function(FetchSubCategoryParams) then) =
      _$FetchSubCategoryParamsCopyWithImpl<$Res, FetchSubCategoryParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'sub_category_id') int subCategoryId});
}

/// @nodoc
class _$FetchSubCategoryParamsCopyWithImpl<$Res,
        $Val extends FetchSubCategoryParams>
    implements $FetchSubCategoryParamsCopyWith<$Res> {
  _$FetchSubCategoryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? subCategoryId = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchSubCategoryParamsImplCopyWith<$Res>
    implements $FetchSubCategoryParamsCopyWith<$Res> {
  factory _$$FetchSubCategoryParamsImplCopyWith(
          _$FetchSubCategoryParamsImpl value,
          $Res Function(_$FetchSubCategoryParamsImpl) then) =
      __$$FetchSubCategoryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'sub_category_id') int subCategoryId});
}

/// @nodoc
class __$$FetchSubCategoryParamsImplCopyWithImpl<$Res>
    extends _$FetchSubCategoryParamsCopyWithImpl<$Res,
        _$FetchSubCategoryParamsImpl>
    implements _$$FetchSubCategoryParamsImplCopyWith<$Res> {
  __$$FetchSubCategoryParamsImplCopyWithImpl(
      _$FetchSubCategoryParamsImpl _value,
      $Res Function(_$FetchSubCategoryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? subCategoryId = null,
  }) {
    return _then(_$FetchSubCategoryParamsImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchSubCategoryParamsImpl implements _FetchSubCategoryParams {
  const _$FetchSubCategoryParamsImpl(
      {@JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'sub_category_id') required this.subCategoryId});

  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'sub_category_id')
  final int subCategoryId;

  @override
  String toString() {
    return 'FetchSubCategoryParams(categoryId: $categoryId, subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubCategoryParamsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, subCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubCategoryParamsImplCopyWith<_$FetchSubCategoryParamsImpl>
      get copyWith => __$$FetchSubCategoryParamsImplCopyWithImpl<
          _$FetchSubCategoryParamsImpl>(this, _$identity);
}

abstract class _FetchSubCategoryParams implements FetchSubCategoryParams {
  const factory _FetchSubCategoryParams(
          {@JsonKey(name: 'category_id') required final int categoryId,
          @JsonKey(name: 'sub_category_id') required final int subCategoryId}) =
      _$FetchSubCategoryParamsImpl;

  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'sub_category_id')
  int get subCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$FetchSubCategoryParamsImplCopyWith<_$FetchSubCategoryParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
