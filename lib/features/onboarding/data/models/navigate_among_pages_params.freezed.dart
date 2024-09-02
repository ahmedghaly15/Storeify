// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate_among_pages_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigateAmongPagesParams {
  BuildContext get context => throw _privateConstructorUsedError;
  PageController get pageController => throw _privateConstructorUsedError;
  bool get isLastBoarding => throw _privateConstructorUsedError;

  /// Create a copy of NavigateAmongPagesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavigateAmongPagesParamsCopyWith<NavigateAmongPagesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateAmongPagesParamsCopyWith<$Res> {
  factory $NavigateAmongPagesParamsCopyWith(NavigateAmongPagesParams value,
          $Res Function(NavigateAmongPagesParams) then) =
      _$NavigateAmongPagesParamsCopyWithImpl<$Res, NavigateAmongPagesParams>;
  @useResult
  $Res call(
      {BuildContext context,
      PageController pageController,
      bool isLastBoarding});
}

/// @nodoc
class _$NavigateAmongPagesParamsCopyWithImpl<$Res,
        $Val extends NavigateAmongPagesParams>
    implements $NavigateAmongPagesParamsCopyWith<$Res> {
  _$NavigateAmongPagesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigateAmongPagesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? pageController = null,
    Object? isLastBoarding = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      pageController: null == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
      isLastBoarding: null == isLastBoarding
          ? _value.isLastBoarding
          : isLastBoarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateAmongPagesParamsImplCopyWith<$Res>
    implements $NavigateAmongPagesParamsCopyWith<$Res> {
  factory _$$NavigateAmongPagesParamsImplCopyWith(
          _$NavigateAmongPagesParamsImpl value,
          $Res Function(_$NavigateAmongPagesParamsImpl) then) =
      __$$NavigateAmongPagesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      PageController pageController,
      bool isLastBoarding});
}

/// @nodoc
class __$$NavigateAmongPagesParamsImplCopyWithImpl<$Res>
    extends _$NavigateAmongPagesParamsCopyWithImpl<$Res,
        _$NavigateAmongPagesParamsImpl>
    implements _$$NavigateAmongPagesParamsImplCopyWith<$Res> {
  __$$NavigateAmongPagesParamsImplCopyWithImpl(
      _$NavigateAmongPagesParamsImpl _value,
      $Res Function(_$NavigateAmongPagesParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigateAmongPagesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? pageController = null,
    Object? isLastBoarding = null,
  }) {
    return _then(_$NavigateAmongPagesParamsImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      pageController: null == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
      isLastBoarding: null == isLastBoarding
          ? _value.isLastBoarding
          : isLastBoarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NavigateAmongPagesParamsImpl implements _NavigateAmongPagesParams {
  const _$NavigateAmongPagesParamsImpl(
      {required this.context,
      required this.pageController,
      required this.isLastBoarding});

  @override
  final BuildContext context;
  @override
  final PageController pageController;
  @override
  final bool isLastBoarding;

  @override
  String toString() {
    return 'NavigateAmongPagesParams(context: $context, pageController: $pageController, isLastBoarding: $isLastBoarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateAmongPagesParamsImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.pageController, pageController) ||
                other.pageController == pageController) &&
            (identical(other.isLastBoarding, isLastBoarding) ||
                other.isLastBoarding == isLastBoarding));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, pageController, isLastBoarding);

  /// Create a copy of NavigateAmongPagesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateAmongPagesParamsImplCopyWith<_$NavigateAmongPagesParamsImpl>
      get copyWith => __$$NavigateAmongPagesParamsImplCopyWithImpl<
          _$NavigateAmongPagesParamsImpl>(this, _$identity);
}

abstract class _NavigateAmongPagesParams implements NavigateAmongPagesParams {
  const factory _NavigateAmongPagesParams(
      {required final BuildContext context,
      required final PageController pageController,
      required final bool isLastBoarding}) = _$NavigateAmongPagesParamsImpl;

  @override
  BuildContext get context;
  @override
  PageController get pageController;
  @override
  bool get isLastBoarding;

  /// Create a copy of NavigateAmongPagesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateAmongPagesParamsImplCopyWith<_$NavigateAmongPagesParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
