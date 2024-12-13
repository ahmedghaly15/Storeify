// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingState<T> {
  OnboardingStateStatus get status => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingStateCopyWith<T, OnboardingState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<T, $Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState<T> value, $Res Function(OnboardingState<T>) then) =
      _$OnboardingStateCopyWithImpl<T, $Res, OnboardingState<T>>;
  @useResult
  $Res call({OnboardingStateStatus status, bool isLastPage});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<T, $Res, $Val extends OnboardingState<T>>
    implements $OnboardingStateCopyWith<T, $Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLastPage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OnboardingStateStatus,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingStateImplCopyWith<T, $Res>
    implements $OnboardingStateCopyWith<T, $Res> {
  factory _$$OnboardingStateImplCopyWith(_$OnboardingStateImpl<T> value,
          $Res Function(_$OnboardingStateImpl<T>) then) =
      __$$OnboardingStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({OnboardingStateStatus status, bool isLastPage});
}

/// @nodoc
class __$$OnboardingStateImplCopyWithImpl<T, $Res>
    extends _$OnboardingStateCopyWithImpl<T, $Res, _$OnboardingStateImpl<T>>
    implements _$$OnboardingStateImplCopyWith<T, $Res> {
  __$$OnboardingStateImplCopyWithImpl(_$OnboardingStateImpl<T> _value,
      $Res Function(_$OnboardingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLastPage = null,
  }) {
    return _then(_$OnboardingStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OnboardingStateStatus,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnboardingStateImpl<T> implements _OnboardingState<T> {
  const _$OnboardingStateImpl({required this.status, this.isLastPage = false});

  @override
  final OnboardingStateStatus status;
  @override
  @JsonKey()
  final bool isLastPage;

  @override
  String toString() {
    return 'OnboardingState<$T>(status: $status, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isLastPage);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingStateImplCopyWith<T, _$OnboardingStateImpl<T>> get copyWith =>
      __$$OnboardingStateImplCopyWithImpl<T, _$OnboardingStateImpl<T>>(
          this, _$identity);
}

abstract class _OnboardingState<T> implements OnboardingState<T> {
  const factory _OnboardingState(
      {required final OnboardingStateStatus status,
      final bool isLastPage}) = _$OnboardingStateImpl<T>;

  @override
  OnboardingStateStatus get status;
  @override
  bool get isLastPage;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingStateImplCopyWith<T, _$OnboardingStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
