// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate_to_sub_category_view_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigateToSubCategoryViewParams {
  int get categoryId => throw _privateConstructorUsedError;
  SubCategory get subCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigateToSubCategoryViewParamsCopyWith<NavigateToSubCategoryViewParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToSubCategoryViewParamsCopyWith<$Res> {
  factory $NavigateToSubCategoryViewParamsCopyWith(
          NavigateToSubCategoryViewParams value,
          $Res Function(NavigateToSubCategoryViewParams) then) =
      _$NavigateToSubCategoryViewParamsCopyWithImpl<$Res,
          NavigateToSubCategoryViewParams>;
  @useResult
  $Res call({int categoryId, SubCategory subCategory});
}

/// @nodoc
class _$NavigateToSubCategoryViewParamsCopyWithImpl<$Res,
        $Val extends NavigateToSubCategoryViewParams>
    implements $NavigateToSubCategoryViewParamsCopyWith<$Res> {
  _$NavigateToSubCategoryViewParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? subCategory = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateToSubCategoryViewParamsImplCopyWith<$Res>
    implements $NavigateToSubCategoryViewParamsCopyWith<$Res> {
  factory _$$NavigateToSubCategoryViewParamsImplCopyWith(
          _$NavigateToSubCategoryViewParamsImpl value,
          $Res Function(_$NavigateToSubCategoryViewParamsImpl) then) =
      __$$NavigateToSubCategoryViewParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId, SubCategory subCategory});
}

/// @nodoc
class __$$NavigateToSubCategoryViewParamsImplCopyWithImpl<$Res>
    extends _$NavigateToSubCategoryViewParamsCopyWithImpl<$Res,
        _$NavigateToSubCategoryViewParamsImpl>
    implements _$$NavigateToSubCategoryViewParamsImplCopyWith<$Res> {
  __$$NavigateToSubCategoryViewParamsImplCopyWithImpl(
      _$NavigateToSubCategoryViewParamsImpl _value,
      $Res Function(_$NavigateToSubCategoryViewParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? subCategory = null,
  }) {
    return _then(_$NavigateToSubCategoryViewParamsImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
    ));
  }
}

/// @nodoc

class _$NavigateToSubCategoryViewParamsImpl
    implements _NavigateToSubCategoryViewParams {
  const _$NavigateToSubCategoryViewParamsImpl(
      {required this.categoryId, required this.subCategory});

  @override
  final int categoryId;
  @override
  final SubCategory subCategory;

  @override
  String toString() {
    return 'NavigateToSubCategoryViewParams(categoryId: $categoryId, subCategory: $subCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToSubCategoryViewParamsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, subCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToSubCategoryViewParamsImplCopyWith<
          _$NavigateToSubCategoryViewParamsImpl>
      get copyWith => __$$NavigateToSubCategoryViewParamsImplCopyWithImpl<
          _$NavigateToSubCategoryViewParamsImpl>(this, _$identity);
}

abstract class _NavigateToSubCategoryViewParams
    implements NavigateToSubCategoryViewParams {
  const factory _NavigateToSubCategoryViewParams(
          {required final int categoryId,
          required final SubCategory subCategory}) =
      _$NavigateToSubCategoryViewParamsImpl;

  @override
  int get categoryId;
  @override
  SubCategory get subCategory;
  @override
  @JsonKey(ignore: true)
  _$$NavigateToSubCategoryViewParamsImplCopyWith<
          _$NavigateToSubCategoryViewParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
