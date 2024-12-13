// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePassState {
  ChangePassStateStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get oldPasswordObscured => throw _privateConstructorUsedError;
  bool get newPasswordObscured => throw _privateConstructorUsedError;
  bool get confirmNewPassObscured => throw _privateConstructorUsedError;

  /// Create a copy of ChangePassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePassStateCopyWith<ChangePassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePassStateCopyWith<$Res> {
  factory $ChangePassStateCopyWith(
          ChangePassState value, $Res Function(ChangePassState) then) =
      _$ChangePassStateCopyWithImpl<$Res, ChangePassState>;
  @useResult
  $Res call(
      {ChangePassStateStatus status,
      String? error,
      bool oldPasswordObscured,
      bool newPasswordObscured,
      bool confirmNewPassObscured});
}

/// @nodoc
class _$ChangePassStateCopyWithImpl<$Res, $Val extends ChangePassState>
    implements $ChangePassStateCopyWith<$Res> {
  _$ChangePassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? oldPasswordObscured = null,
    Object? newPasswordObscured = null,
    Object? confirmNewPassObscured = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePassStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPasswordObscured: null == oldPasswordObscured
          ? _value.oldPasswordObscured
          : oldPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      newPasswordObscured: null == newPasswordObscured
          ? _value.newPasswordObscured
          : newPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmNewPassObscured: null == confirmNewPassObscured
          ? _value.confirmNewPassObscured
          : confirmNewPassObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePassStateImplCopyWith<$Res>
    implements $ChangePassStateCopyWith<$Res> {
  factory _$$ChangePassStateImplCopyWith(_$ChangePassStateImpl value,
          $Res Function(_$ChangePassStateImpl) then) =
      __$$ChangePassStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChangePassStateStatus status,
      String? error,
      bool oldPasswordObscured,
      bool newPasswordObscured,
      bool confirmNewPassObscured});
}

/// @nodoc
class __$$ChangePassStateImplCopyWithImpl<$Res>
    extends _$ChangePassStateCopyWithImpl<$Res, _$ChangePassStateImpl>
    implements _$$ChangePassStateImplCopyWith<$Res> {
  __$$ChangePassStateImplCopyWithImpl(
      _$ChangePassStateImpl _value, $Res Function(_$ChangePassStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePassState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? oldPasswordObscured = null,
    Object? newPasswordObscured = null,
    Object? confirmNewPassObscured = null,
  }) {
    return _then(_$ChangePassStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePassStateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPasswordObscured: null == oldPasswordObscured
          ? _value.oldPasswordObscured
          : oldPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      newPasswordObscured: null == newPasswordObscured
          ? _value.newPasswordObscured
          : newPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmNewPassObscured: null == confirmNewPassObscured
          ? _value.confirmNewPassObscured
          : confirmNewPassObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangePassStateImpl implements _ChangePassState {
  const _$ChangePassStateImpl(
      {required this.status,
      this.error,
      this.oldPasswordObscured = true,
      this.newPasswordObscured = true,
      this.confirmNewPassObscured = true});

  @override
  final ChangePassStateStatus status;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool oldPasswordObscured;
  @override
  @JsonKey()
  final bool newPasswordObscured;
  @override
  @JsonKey()
  final bool confirmNewPassObscured;

  @override
  String toString() {
    return 'ChangePassState(status: $status, error: $error, oldPasswordObscured: $oldPasswordObscured, newPasswordObscured: $newPasswordObscured, confirmNewPassObscured: $confirmNewPassObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePassStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.oldPasswordObscured, oldPasswordObscured) ||
                other.oldPasswordObscured == oldPasswordObscured) &&
            (identical(other.newPasswordObscured, newPasswordObscured) ||
                other.newPasswordObscured == newPasswordObscured) &&
            (identical(other.confirmNewPassObscured, confirmNewPassObscured) ||
                other.confirmNewPassObscured == confirmNewPassObscured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error,
      oldPasswordObscured, newPasswordObscured, confirmNewPassObscured);

  /// Create a copy of ChangePassState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePassStateImplCopyWith<_$ChangePassStateImpl> get copyWith =>
      __$$ChangePassStateImplCopyWithImpl<_$ChangePassStateImpl>(
          this, _$identity);
}

abstract class _ChangePassState implements ChangePassState {
  const factory _ChangePassState(
      {required final ChangePassStateStatus status,
      final String? error,
      final bool oldPasswordObscured,
      final bool newPasswordObscured,
      final bool confirmNewPassObscured}) = _$ChangePassStateImpl;

  @override
  ChangePassStateStatus get status;
  @override
  String? get error;
  @override
  bool get oldPasswordObscured;
  @override
  bool get newPasswordObscured;
  @override
  bool get confirmNewPassObscured;

  /// Create a copy of ChangePassState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePassStateImplCopyWith<_$ChangePassStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
