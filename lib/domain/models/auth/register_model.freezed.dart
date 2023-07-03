// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DonorRegisterRequest _$DonorRegisterRequestFromJson(Map<String, dynamic> json) {
  return _DonorRegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$DonorRegisterRequest {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get bloodGroup => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get lastDonatedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorRegisterRequestCopyWith<DonorRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorRegisterRequestCopyWith<$Res> {
  factory $DonorRegisterRequestCopyWith(DonorRegisterRequest value,
          $Res Function(DonorRegisterRequest) then) =
      _$DonorRegisterRequestCopyWithImpl<$Res, DonorRegisterRequest>;
  @useResult
  $Res call(
      {String name,
      String phone,
      String email,
      String bloodGroup,
      int age,
      String gender,
      String address,
      String? lastDonatedDate});
}

/// @nodoc
class _$DonorRegisterRequestCopyWithImpl<$Res,
        $Val extends DonorRegisterRequest>
    implements $DonorRegisterRequestCopyWith<$Res> {
  _$DonorRegisterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? bloodGroup = null,
    Object? age = null,
    Object? gender = null,
    Object? address = null,
    Object? lastDonatedDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lastDonatedDate: freezed == lastDonatedDate
          ? _value.lastDonatedDate
          : lastDonatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DonorRegisterRequestCopyWith<$Res>
    implements $DonorRegisterRequestCopyWith<$Res> {
  factory _$$_DonorRegisterRequestCopyWith(_$_DonorRegisterRequest value,
          $Res Function(_$_DonorRegisterRequest) then) =
      __$$_DonorRegisterRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      String email,
      String bloodGroup,
      int age,
      String gender,
      String address,
      String? lastDonatedDate});
}

/// @nodoc
class __$$_DonorRegisterRequestCopyWithImpl<$Res>
    extends _$DonorRegisterRequestCopyWithImpl<$Res, _$_DonorRegisterRequest>
    implements _$$_DonorRegisterRequestCopyWith<$Res> {
  __$$_DonorRegisterRequestCopyWithImpl(_$_DonorRegisterRequest _value,
      $Res Function(_$_DonorRegisterRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? bloodGroup = null,
    Object? age = null,
    Object? gender = null,
    Object? address = null,
    Object? lastDonatedDate = freezed,
  }) {
    return _then(_$_DonorRegisterRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lastDonatedDate: freezed == lastDonatedDate
          ? _value.lastDonatedDate
          : lastDonatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DonorRegisterRequest implements _DonorRegisterRequest {
  const _$_DonorRegisterRequest(
      {required this.name,
      required this.phone,
      required this.email,
      required this.bloodGroup,
      required this.age,
      required this.gender,
      required this.address,
      this.lastDonatedDate});

  factory _$_DonorRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DonorRegisterRequestFromJson(json);

  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String bloodGroup;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String address;
  @override
  final String? lastDonatedDate;

  @override
  String toString() {
    return 'DonorRegisterRequest(name: $name, phone: $phone, email: $email, bloodGroup: $bloodGroup, age: $age, gender: $gender, address: $address, lastDonatedDate: $lastDonatedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DonorRegisterRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lastDonatedDate, lastDonatedDate) ||
                other.lastDonatedDate == lastDonatedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone, email, bloodGroup,
      age, gender, address, lastDonatedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DonorRegisterRequestCopyWith<_$_DonorRegisterRequest> get copyWith =>
      __$$_DonorRegisterRequestCopyWithImpl<_$_DonorRegisterRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DonorRegisterRequestToJson(
      this,
    );
  }
}

abstract class _DonorRegisterRequest implements DonorRegisterRequest {
  const factory _DonorRegisterRequest(
      {required final String name,
      required final String phone,
      required final String email,
      required final String bloodGroup,
      required final int age,
      required final String gender,
      required final String address,
      final String? lastDonatedDate}) = _$_DonorRegisterRequest;

  factory _DonorRegisterRequest.fromJson(Map<String, dynamic> json) =
      _$_DonorRegisterRequest.fromJson;

  @override
  String get name;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get bloodGroup;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get address;
  @override
  String? get lastDonatedDate;
  @override
  @JsonKey(ignore: true)
  _$$_DonorRegisterRequestCopyWith<_$_DonorRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
