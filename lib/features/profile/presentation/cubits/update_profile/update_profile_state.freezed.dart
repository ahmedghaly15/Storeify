// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileState<T> {
  UpdateProfileStateStatus get status => throw _privateConstructorUsedError;
  UserData? get updatedUserData => throw _privateConstructorUsedError;
  File? get selectedImg => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileStateCopyWith<T, UpdateProfileState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<T, $Res> {
  factory $UpdateProfileStateCopyWith(UpdateProfileState<T> value,
          $Res Function(UpdateProfileState<T>) then) =
      _$UpdateProfileStateCopyWithImpl<T, $Res, UpdateProfileState<T>>;
  @useResult
  $Res call(
      {UpdateProfileStateStatus status,
      UserData? updatedUserData,
      File? selectedImg,
      String? error});
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<T, $Res,
        $Val extends UpdateProfileState<T>>
    implements $UpdateProfileStateCopyWith<T, $Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updatedUserData = freezed,
    Object? selectedImg = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdateProfileStateStatus,
      updatedUserData: freezed == updatedUserData
          ? _value.updatedUserData
          : updatedUserData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      selectedImg: freezed == selectedImg
          ? _value.selectedImg
          : selectedImg // ignore: cast_nullable_to_non_nullable
              as File?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileStateImplCopyWith<T, $Res>
    implements $UpdateProfileStateCopyWith<T, $Res> {
  factory _$$UpdateProfileStateImplCopyWith(_$UpdateProfileStateImpl<T> value,
          $Res Function(_$UpdateProfileStateImpl<T>) then) =
      __$$UpdateProfileStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {UpdateProfileStateStatus status,
      UserData? updatedUserData,
      File? selectedImg,
      String? error});
}

/// @nodoc
class __$$UpdateProfileStateImplCopyWithImpl<T, $Res>
    extends _$UpdateProfileStateCopyWithImpl<T, $Res,
        _$UpdateProfileStateImpl<T>>
    implements _$$UpdateProfileStateImplCopyWith<T, $Res> {
  __$$UpdateProfileStateImplCopyWithImpl(_$UpdateProfileStateImpl<T> _value,
      $Res Function(_$UpdateProfileStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updatedUserData = freezed,
    Object? selectedImg = freezed,
    Object? error = freezed,
  }) {
    return _then(_$UpdateProfileStateImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdateProfileStateStatus,
      updatedUserData: freezed == updatedUserData
          ? _value.updatedUserData
          : updatedUserData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      selectedImg: freezed == selectedImg
          ? _value.selectedImg
          : selectedImg // ignore: cast_nullable_to_non_nullable
              as File?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateProfileStateImpl<T> implements _UpdateProfileState<T> {
  const _$UpdateProfileStateImpl(
      {required this.status,
      this.updatedUserData,
      this.selectedImg,
      this.error});

  @override
  final UpdateProfileStateStatus status;
  @override
  final UserData? updatedUserData;
  @override
  final File? selectedImg;
  @override
  final String? error;

  @override
  String toString() {
    return 'UpdateProfileState<$T>(status: $status, updatedUserData: $updatedUserData, selectedImg: $selectedImg, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedUserData, updatedUserData) ||
                other.updatedUserData == updatedUserData) &&
            (identical(other.selectedImg, selectedImg) ||
                other.selectedImg == selectedImg) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, updatedUserData, selectedImg, error);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileStateImplCopyWith<T, _$UpdateProfileStateImpl<T>>
      get copyWith => __$$UpdateProfileStateImplCopyWithImpl<T,
          _$UpdateProfileStateImpl<T>>(this, _$identity);
}

abstract class _UpdateProfileState<T> implements UpdateProfileState<T> {
  const factory _UpdateProfileState(
      {required final UpdateProfileStateStatus status,
      final UserData? updatedUserData,
      final File? selectedImg,
      final String? error}) = _$UpdateProfileStateImpl<T>;

  @override
  UpdateProfileStateStatus get status;
  @override
  UserData? get updatedUserData;
  @override
  File? get selectedImg;
  @override
  String? get error;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileStateImplCopyWith<T, _$UpdateProfileStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
