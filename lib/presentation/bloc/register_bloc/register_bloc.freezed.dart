// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  DonorRegisterRequest get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DonorRegisterRequest request) donorRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DonorRegisterRequest request)? donorRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DonorRegisterRequest request)? donorRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DonorRegister value) donorRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DonorRegister value)? donorRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DonorRegister value)? donorRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call({DonorRegisterRequest request});

  $DonorRegisterRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as DonorRegisterRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DonorRegisterRequestCopyWith<$Res> get request {
    return $DonorRegisterRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DonorRegisterCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$DonorRegisterCopyWith(
          _$DonorRegister value, $Res Function(_$DonorRegister) then) =
      __$$DonorRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DonorRegisterRequest request});

  @override
  $DonorRegisterRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$DonorRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$DonorRegister>
    implements _$$DonorRegisterCopyWith<$Res> {
  __$$DonorRegisterCopyWithImpl(
      _$DonorRegister _value, $Res Function(_$DonorRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$DonorRegister(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as DonorRegisterRequest,
    ));
  }
}

/// @nodoc

class _$DonorRegister implements DonorRegister {
  const _$DonorRegister({required this.request});

  @override
  final DonorRegisterRequest request;

  @override
  String toString() {
    return 'RegisterEvent.donorRegister(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorRegister &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorRegisterCopyWith<_$DonorRegister> get copyWith =>
      __$$DonorRegisterCopyWithImpl<_$DonorRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DonorRegisterRequest request) donorRegister,
  }) {
    return donorRegister(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DonorRegisterRequest request)? donorRegister,
  }) {
    return donorRegister?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DonorRegisterRequest request)? donorRegister,
    required TResult orElse(),
  }) {
    if (donorRegister != null) {
      return donorRegister(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DonorRegister value) donorRegister,
  }) {
    return donorRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DonorRegister value)? donorRegister,
  }) {
    return donorRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DonorRegister value)? donorRegister,
    required TResult orElse(),
  }) {
    if (donorRegister != null) {
      return donorRegister(this);
    }
    return orElse();
  }
}

abstract class DonorRegister implements RegisterEvent {
  const factory DonorRegister({required final DonorRegisterRequest request}) =
      _$DonorRegister;

  @override
  DonorRegisterRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$DonorRegisterCopyWith<_$DonorRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  RegisterStatus get status => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({RegisterStatus status, String? errorMsg});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStatus status, String? errorMsg});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$_RegisterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState({required this.status, this.errorMsg});

  @override
  final RegisterStatus status;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'RegisterState(status: $status, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required final RegisterStatus status,
      final String? errorMsg}) = _$_RegisterState;

  @override
  RegisterStatus get status;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
