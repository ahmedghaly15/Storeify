// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storeify_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreifyUser _$StoreifyUserFromJson(Map<String, dynamic> json) {
  return _StoreifyUser.fromJson(json);
}

/// @nodoc
mixin _$StoreifyUser {
  @HiveField(0)
  String? get token => throw _privateConstructorUsedError;
  @HiveField(1)
  UserData get user => throw _privateConstructorUsedError;

  /// Serializes this StoreifyUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreifyUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreifyUserCopyWith<StoreifyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreifyUserCopyWith<$Res> {
  factory $StoreifyUserCopyWith(
          StoreifyUser value, $Res Function(StoreifyUser) then) =
      _$StoreifyUserCopyWithImpl<$Res, StoreifyUser>;
  @useResult
  $Res call({@HiveField(0) String? token, @HiveField(1) UserData user});
}

/// @nodoc
class _$StoreifyUserCopyWithImpl<$Res, $Val extends StoreifyUser>
    implements $StoreifyUserCopyWith<$Res> {
  _$StoreifyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreifyUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreifyUserImplCopyWith<$Res>
    implements $StoreifyUserCopyWith<$Res> {
  factory _$$StoreifyUserImplCopyWith(
          _$StoreifyUserImpl value, $Res Function(_$StoreifyUserImpl) then) =
      __$$StoreifyUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? token, @HiveField(1) UserData user});
}

/// @nodoc
class __$$StoreifyUserImplCopyWithImpl<$Res>
    extends _$StoreifyUserCopyWithImpl<$Res, _$StoreifyUserImpl>
    implements _$$StoreifyUserImplCopyWith<$Res> {
  __$$StoreifyUserImplCopyWithImpl(
      _$StoreifyUserImpl _value, $Res Function(_$StoreifyUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreifyUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = null,
  }) {
    return _then(_$StoreifyUserImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StoreifyUserImpl implements _StoreifyUser {
  const _$StoreifyUserImpl(
      {@HiveField(0) this.token, @HiveField(1) required this.user});

  factory _$StoreifyUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreifyUserImplFromJson(json);

  @override
  @HiveField(0)
  final String? token;
  @override
  @HiveField(1)
  final UserData user;

  @override
  String toString() {
    return 'StoreifyUser(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreifyUserImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  /// Create a copy of StoreifyUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreifyUserImplCopyWith<_$StoreifyUserImpl> get copyWith =>
      __$$StoreifyUserImplCopyWithImpl<_$StoreifyUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreifyUserImplToJson(
      this,
    );
  }
}

abstract class _StoreifyUser implements StoreifyUser {
  const factory _StoreifyUser(
      {@HiveField(0) final String? token,
      @HiveField(1) required final UserData user}) = _$StoreifyUserImpl;

  factory _StoreifyUser.fromJson(Map<String, dynamic> json) =
      _$StoreifyUserImpl.fromJson;

  @override
  @HiveField(0)
  String? get token;
  @override
  @HiveField(1)
  UserData get user;

  /// Create a copy of StoreifyUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreifyUserImplCopyWith<_$StoreifyUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
