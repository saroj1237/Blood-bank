// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_camp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BloodCampEvent {
  BookCampRequest get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookCampRequest request) bookCamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookCampRequest request)? bookCamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookCampRequest request)? bookCamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookCamp value) bookCamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookCamp value)? bookCamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookCamp value)? bookCamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BloodCampEventCopyWith<BloodCampEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodCampEventCopyWith<$Res> {
  factory $BloodCampEventCopyWith(
          BloodCampEvent value, $Res Function(BloodCampEvent) then) =
      _$BloodCampEventCopyWithImpl<$Res, BloodCampEvent>;
  @useResult
  $Res call({BookCampRequest request});

  $BookCampRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$BloodCampEventCopyWithImpl<$Res, $Val extends BloodCampEvent>
    implements $BloodCampEventCopyWith<$Res> {
  _$BloodCampEventCopyWithImpl(this._value, this._then);

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
              as BookCampRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCampRequestCopyWith<$Res> get request {
    return $BookCampRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookCampCopyWith<$Res>
    implements $BloodCampEventCopyWith<$Res> {
  factory _$$BookCampCopyWith(
          _$BookCamp value, $Res Function(_$BookCamp) then) =
      __$$BookCampCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookCampRequest request});

  @override
  $BookCampRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$BookCampCopyWithImpl<$Res>
    extends _$BloodCampEventCopyWithImpl<$Res, _$BookCamp>
    implements _$$BookCampCopyWith<$Res> {
  __$$BookCampCopyWithImpl(_$BookCamp _value, $Res Function(_$BookCamp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$BookCamp(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as BookCampRequest,
    ));
  }
}

/// @nodoc

class _$BookCamp implements BookCamp {
  const _$BookCamp({required this.request});

  @override
  final BookCampRequest request;

  @override
  String toString() {
    return 'BloodCampEvent.bookCamp(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCamp &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCampCopyWith<_$BookCamp> get copyWith =>
      __$$BookCampCopyWithImpl<_$BookCamp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookCampRequest request) bookCamp,
  }) {
    return bookCamp(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookCampRequest request)? bookCamp,
  }) {
    return bookCamp?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookCampRequest request)? bookCamp,
    required TResult orElse(),
  }) {
    if (bookCamp != null) {
      return bookCamp(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookCamp value) bookCamp,
  }) {
    return bookCamp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookCamp value)? bookCamp,
  }) {
    return bookCamp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookCamp value)? bookCamp,
    required TResult orElse(),
  }) {
    if (bookCamp != null) {
      return bookCamp(this);
    }
    return orElse();
  }
}

abstract class BookCamp implements BloodCampEvent {
  const factory BookCamp({required final BookCampRequest request}) = _$BookCamp;

  @override
  BookCampRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$BookCampCopyWith<_$BookCamp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BloodCampState {
  BloodCampStatus get status => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BloodCampStateCopyWith<BloodCampState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodCampStateCopyWith<$Res> {
  factory $BloodCampStateCopyWith(
          BloodCampState value, $Res Function(BloodCampState) then) =
      _$BloodCampStateCopyWithImpl<$Res, BloodCampState>;
  @useResult
  $Res call({BloodCampStatus status, String? errorMsg});
}

/// @nodoc
class _$BloodCampStateCopyWithImpl<$Res, $Val extends BloodCampState>
    implements $BloodCampStateCopyWith<$Res> {
  _$BloodCampStateCopyWithImpl(this._value, this._then);

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
              as BloodCampStatus,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $BloodCampStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BloodCampStatus status, String? errorMsg});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$BloodCampStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BloodCampStatus,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({required this.status, this.errorMsg});

  @override
  final BloodCampStatus status;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'BloodCampState(status: $status, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);
}

abstract class Initial implements BloodCampState {
  const factory Initial(
      {required final BloodCampStatus status,
      final String? errorMsg}) = _$Initial;

  @override
  BloodCampStatus get status;
  @override
  String? get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
