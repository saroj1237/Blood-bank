// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookCampRequest _$BookCampRequestFromJson(Map<String, dynamic> json) {
  return _BookCampRequest.fromJson(json);
}

/// @nodoc
mixin _$BookCampRequest {
  String get name => throw _privateConstructorUsedError;
  String get organizer_name => throw _privateConstructorUsedError;
  String get venue => throw _privateConstructorUsedError;
  String get date_time => throw _privateConstructorUsedError;
  String get donors_no => throw _privateConstructorUsedError;
  String get phone_number => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCampRequestCopyWith<BookCampRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCampRequestCopyWith<$Res> {
  factory $BookCampRequestCopyWith(
          BookCampRequest value, $Res Function(BookCampRequest) then) =
      _$BookCampRequestCopyWithImpl<$Res, BookCampRequest>;
  @useResult
  $Res call(
      {String name,
      String organizer_name,
      String venue,
      String date_time,
      String donors_no,
      String phone_number,
      String email,
      String message});
}

/// @nodoc
class _$BookCampRequestCopyWithImpl<$Res, $Val extends BookCampRequest>
    implements $BookCampRequestCopyWith<$Res> {
  _$BookCampRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? organizer_name = null,
    Object? venue = null,
    Object? date_time = null,
    Object? donors_no = null,
    Object? phone_number = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organizer_name: null == organizer_name
          ? _value.organizer_name
          : organizer_name // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      date_time: null == date_time
          ? _value.date_time
          : date_time // ignore: cast_nullable_to_non_nullable
              as String,
      donors_no: null == donors_no
          ? _value.donors_no
          : donors_no // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookCampRequestCopyWith<$Res>
    implements $BookCampRequestCopyWith<$Res> {
  factory _$$_BookCampRequestCopyWith(
          _$_BookCampRequest value, $Res Function(_$_BookCampRequest) then) =
      __$$_BookCampRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String organizer_name,
      String venue,
      String date_time,
      String donors_no,
      String phone_number,
      String email,
      String message});
}

/// @nodoc
class __$$_BookCampRequestCopyWithImpl<$Res>
    extends _$BookCampRequestCopyWithImpl<$Res, _$_BookCampRequest>
    implements _$$_BookCampRequestCopyWith<$Res> {
  __$$_BookCampRequestCopyWithImpl(
      _$_BookCampRequest _value, $Res Function(_$_BookCampRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? organizer_name = null,
    Object? venue = null,
    Object? date_time = null,
    Object? donors_no = null,
    Object? phone_number = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_$_BookCampRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organizer_name: null == organizer_name
          ? _value.organizer_name
          : organizer_name // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      date_time: null == date_time
          ? _value.date_time
          : date_time // ignore: cast_nullable_to_non_nullable
              as String,
      donors_no: null == donors_no
          ? _value.donors_no
          : donors_no // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookCampRequest implements _BookCampRequest {
  const _$_BookCampRequest(
      {required this.name,
      required this.organizer_name,
      required this.venue,
      required this.date_time,
      required this.donors_no,
      required this.phone_number,
      required this.email,
      required this.message});

  factory _$_BookCampRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BookCampRequestFromJson(json);

  @override
  final String name;
  @override
  final String organizer_name;
  @override
  final String venue;
  @override
  final String date_time;
  @override
  final String donors_no;
  @override
  final String phone_number;
  @override
  final String email;
  @override
  final String message;

  @override
  String toString() {
    return 'BookCampRequest(name: $name, organizer_name: $organizer_name, venue: $venue, date_time: $date_time, donors_no: $donors_no, phone_number: $phone_number, email: $email, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookCampRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organizer_name, organizer_name) ||
                other.organizer_name == organizer_name) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.date_time, date_time) ||
                other.date_time == date_time) &&
            (identical(other.donors_no, donors_no) ||
                other.donors_no == donors_no) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, organizer_name, venue,
      date_time, donors_no, phone_number, email, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookCampRequestCopyWith<_$_BookCampRequest> get copyWith =>
      __$$_BookCampRequestCopyWithImpl<_$_BookCampRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookCampRequestToJson(
      this,
    );
  }
}

abstract class _BookCampRequest implements BookCampRequest {
  const factory _BookCampRequest(
      {required final String name,
      required final String organizer_name,
      required final String venue,
      required final String date_time,
      required final String donors_no,
      required final String phone_number,
      required final String email,
      required final String message}) = _$_BookCampRequest;

  factory _BookCampRequest.fromJson(Map<String, dynamic> json) =
      _$_BookCampRequest.fromJson;

  @override
  String get name;
  @override
  String get organizer_name;
  @override
  String get venue;
  @override
  String get date_time;
  @override
  String get donors_no;
  @override
  String get phone_number;
  @override
  String get email;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_BookCampRequestCopyWith<_$_BookCampRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
