// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) {
  return _ApiErrorModel.fromJson(json);
}

/// @nodoc
mixin _$ApiErrorModel {
  @JsonKey(name: 'data')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorModelCopyWith<ApiErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorModelCopyWith<$Res> {
  factory $ApiErrorModelCopyWith(
          ApiErrorModel value, $Res Function(ApiErrorModel) then) =
      _$ApiErrorModelCopyWithImpl<$Res, ApiErrorModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') String? error});
}

/// @nodoc
class _$ApiErrorModelCopyWithImpl<$Res, $Val extends ApiErrorModel>
    implements $ApiErrorModelCopyWith<$Res> {
  _$ApiErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiErrorModelImplCopyWith<$Res>
    implements $ApiErrorModelCopyWith<$Res> {
  factory _$$ApiErrorModelImplCopyWith(
          _$ApiErrorModelImpl value, $Res Function(_$ApiErrorModelImpl) then) =
      __$$ApiErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') String? error});
}

/// @nodoc
class __$$ApiErrorModelImplCopyWithImpl<$Res>
    extends _$ApiErrorModelCopyWithImpl<$Res, _$ApiErrorModelImpl>
    implements _$$ApiErrorModelImplCopyWith<$Res> {
  __$$ApiErrorModelImplCopyWithImpl(
      _$ApiErrorModelImpl _value, $Res Function(_$ApiErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ApiErrorModelImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorModelImpl implements _ApiErrorModel {
  const _$ApiErrorModelImpl({@JsonKey(name: 'data') this.error});

  factory _$ApiErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final String? error;

  @override
  String toString() {
    return 'ApiErrorModel(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorModelImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorModelImplCopyWith<_$ApiErrorModelImpl> get copyWith =>
      __$$ApiErrorModelImplCopyWithImpl<_$ApiErrorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorModelImplToJson(
      this,
    );
  }
}

abstract class _ApiErrorModel implements ApiErrorModel {
  const factory _ApiErrorModel({@JsonKey(name: 'data') final String? error}) =
      _$ApiErrorModelImpl;

  factory _ApiErrorModel.fromJson(Map<String, dynamic> json) =
      _$ApiErrorModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ApiErrorModelImplCopyWith<_$ApiErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
