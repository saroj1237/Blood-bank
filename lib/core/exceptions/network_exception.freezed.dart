// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkException {
  String get errorMessage => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkExceptionCopyWith<NetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res, NetworkException>;
  @useResult
  $Res call({String errorMessage, int statusCode});
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res, $Val extends NetworkException>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkExceptinCopyWith<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  factory _$$_NetworkExceptinCopyWith(
          _$_NetworkExceptin value, $Res Function(_$_NetworkExceptin) then) =
      __$$_NetworkExceptinCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage, int statusCode});
}

/// @nodoc
class __$$_NetworkExceptinCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$_NetworkExceptin>
    implements _$$_NetworkExceptinCopyWith<$Res> {
  __$$_NetworkExceptinCopyWithImpl(
      _$_NetworkExceptin _value, $Res Function(_$_NetworkExceptin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? statusCode = null,
  }) {
    return _then(_$_NetworkExceptin(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NetworkExceptin implements _NetworkExceptin {
  _$_NetworkExceptin({required this.errorMessage, required this.statusCode});

  @override
  final String errorMessage;
  @override
  final int statusCode;

  @override
  String toString() {
    return 'NetworkException(errorMessage: $errorMessage, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkExceptin &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkExceptinCopyWith<_$_NetworkExceptin> get copyWith =>
      __$$_NetworkExceptinCopyWithImpl<_$_NetworkExceptin>(this, _$identity);
}

abstract class _NetworkExceptin implements NetworkException {
  factory _NetworkExceptin(
      {required final String errorMessage,
      required final int statusCode}) = _$_NetworkExceptin;

  @override
  String get errorMessage;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkExceptinCopyWith<_$_NetworkExceptin> get copyWith =>
      throw _privateConstructorUsedError;
}
