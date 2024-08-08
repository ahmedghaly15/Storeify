// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_requirements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPasswordRequirements {
  String get email => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordRequirementsCopyWith<ResetPasswordRequirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordRequirementsCopyWith<$Res> {
  factory $ResetPasswordRequirementsCopyWith(ResetPasswordRequirements value,
          $Res Function(ResetPasswordRequirements) then) =
      _$ResetPasswordRequirementsCopyWithImpl<$Res, ResetPasswordRequirements>;
  @useResult
  $Res call({String email, BuildContext context});
}

/// @nodoc
class _$ResetPasswordRequirementsCopyWithImpl<$Res,
        $Val extends ResetPasswordRequirements>
    implements $ResetPasswordRequirementsCopyWith<$Res> {
  _$ResetPasswordRequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordRequirementsImplCopyWith<$Res>
    implements $ResetPasswordRequirementsCopyWith<$Res> {
  factory _$$ResetPasswordRequirementsImplCopyWith(
          _$ResetPasswordRequirementsImpl value,
          $Res Function(_$ResetPasswordRequirementsImpl) then) =
      __$$ResetPasswordRequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, BuildContext context});
}

/// @nodoc
class __$$ResetPasswordRequirementsImplCopyWithImpl<$Res>
    extends _$ResetPasswordRequirementsCopyWithImpl<$Res,
        _$ResetPasswordRequirementsImpl>
    implements _$$ResetPasswordRequirementsImplCopyWith<$Res> {
  __$$ResetPasswordRequirementsImplCopyWithImpl(
      _$ResetPasswordRequirementsImpl _value,
      $Res Function(_$ResetPasswordRequirementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? context = null,
  }) {
    return _then(_$ResetPasswordRequirementsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ResetPasswordRequirementsImpl implements _ResetPasswordRequirements {
  const _$ResetPasswordRequirementsImpl(
      {required this.email, required this.context});

  @override
  final String email;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ResetPasswordRequirements(email: $email, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordRequirementsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordRequirementsImplCopyWith<_$ResetPasswordRequirementsImpl>
      get copyWith => __$$ResetPasswordRequirementsImplCopyWithImpl<
          _$ResetPasswordRequirementsImpl>(this, _$identity);
}

abstract class _ResetPasswordRequirements implements ResetPasswordRequirements {
  const factory _ResetPasswordRequirements(
      {required final String email,
      required final BuildContext context}) = _$ResetPasswordRequirementsImpl;

  @override
  String get email;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordRequirementsImplCopyWith<_$ResetPasswordRequirementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
