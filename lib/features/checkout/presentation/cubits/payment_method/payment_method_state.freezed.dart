// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentMethodState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentMethod paymentMethod)
        updateSelectedPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentMethod paymentMethod)? updateSelectedPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentMethod paymentMethod)? updateSelectedPaymentMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(UpdateSelectedPaymentMethod<T> value)
        updateSelectedPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(UpdateSelectedPaymentMethod<T> value)?
        updateSelectedPaymentMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(UpdateSelectedPaymentMethod<T> value)?
        updateSelectedPaymentMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodStateCopyWith<T, $Res> {
  factory $PaymentMethodStateCopyWith(PaymentMethodState<T> value,
          $Res Function(PaymentMethodState<T>) then) =
      _$PaymentMethodStateCopyWithImpl<T, $Res, PaymentMethodState<T>>;
}

/// @nodoc
class _$PaymentMethodStateCopyWithImpl<T, $Res,
        $Val extends PaymentMethodState<T>>
    implements $PaymentMethodStateCopyWith<T, $Res> {
  _$PaymentMethodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$PaymentMethodStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentMethodState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentMethod paymentMethod)
        updateSelectedPaymentMethod,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentMethod paymentMethod)? updateSelectedPaymentMethod,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentMethod paymentMethod)? updateSelectedPaymentMethod,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(UpdateSelectedPaymentMethod<T> value)
        updateSelectedPaymentMethod,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(UpdateSelectedPaymentMethod<T> value)?
        updateSelectedPaymentMethod,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(UpdateSelectedPaymentMethod<T> value)?
        updateSelectedPaymentMethod,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements PaymentMethodState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$UpdateSelectedPaymentMethodImplCopyWith<T, $Res> {
  factory _$$UpdateSelectedPaymentMethodImplCopyWith(
          _$UpdateSelectedPaymentMethodImpl<T> value,
          $Res Function(_$UpdateSelectedPaymentMethodImpl<T>) then) =
      __$$UpdateSelectedPaymentMethodImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({PaymentMethod paymentMethod});

  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$UpdateSelectedPaymentMethodImplCopyWithImpl<T, $Res>
    extends _$PaymentMethodStateCopyWithImpl<T, $Res,
        _$UpdateSelectedPaymentMethodImpl<T>>
    implements _$$UpdateSelectedPaymentMethodImplCopyWith<T, $Res> {
  __$$UpdateSelectedPaymentMethodImplCopyWithImpl(
      _$UpdateSelectedPaymentMethodImpl<T> _value,
      $Res Function(_$UpdateSelectedPaymentMethodImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
  }) {
    return _then(_$UpdateSelectedPaymentMethodImpl<T>(
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value));
    });
  }
}

/// @nodoc

class _$UpdateSelectedPaymentMethodImpl<T>
    implements UpdateSelectedPaymentMethod<T> {
  const _$UpdateSelectedPaymentMethodImpl(this.paymentMethod);

  @override
  final PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'PaymentMethodState<$T>.updateSelectedPaymentMethod(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedPaymentMethodImpl<T> &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod);

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedPaymentMethodImplCopyWith<T,
          _$UpdateSelectedPaymentMethodImpl<T>>
      get copyWith => __$$UpdateSelectedPaymentMethodImplCopyWithImpl<T,
          _$UpdateSelectedPaymentMethodImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentMethod paymentMethod)
        updateSelectedPaymentMethod,
  }) {
    return updateSelectedPaymentMethod(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentMethod paymentMethod)? updateSelectedPaymentMethod,
  }) {
    return updateSelectedPaymentMethod?.call(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentMethod paymentMethod)? updateSelectedPaymentMethod,
    required TResult orElse(),
  }) {
    if (updateSelectedPaymentMethod != null) {
      return updateSelectedPaymentMethod(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(UpdateSelectedPaymentMethod<T> value)
        updateSelectedPaymentMethod,
  }) {
    return updateSelectedPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(UpdateSelectedPaymentMethod<T> value)?
        updateSelectedPaymentMethod,
  }) {
    return updateSelectedPaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(UpdateSelectedPaymentMethod<T> value)?
        updateSelectedPaymentMethod,
    required TResult orElse(),
  }) {
    if (updateSelectedPaymentMethod != null) {
      return updateSelectedPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedPaymentMethod<T> implements PaymentMethodState<T> {
  const factory UpdateSelectedPaymentMethod(final PaymentMethod paymentMethod) =
      _$UpdateSelectedPaymentMethodImpl<T>;

  PaymentMethod get paymentMethod;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedPaymentMethodImplCopyWith<T,
          _$UpdateSelectedPaymentMethodImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
