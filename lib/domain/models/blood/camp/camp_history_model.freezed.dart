// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camp_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BloodCampHistoryModel _$BloodCampHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _BloodCampHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$BloodCampHistoryModel {
  int get campid => throw _privateConstructorUsedError;
  String get ndate => throw _privateConstructorUsedError;
  String get nepalidate => throw _privateConstructorUsedError;
  String get camporganizer => throw _privateConstructorUsedError;
  String get camplocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BloodCampHistoryModelCopyWith<BloodCampHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodCampHistoryModelCopyWith<$Res> {
  factory $BloodCampHistoryModelCopyWith(BloodCampHistoryModel value,
          $Res Function(BloodCampHistoryModel) then) =
      _$BloodCampHistoryModelCopyWithImpl<$Res, BloodCampHistoryModel>;
  @useResult
  $Res call(
      {int campid,
      String ndate,
      String nepalidate,
      String camporganizer,
      String camplocation});
}

/// @nodoc
class _$BloodCampHistoryModelCopyWithImpl<$Res,
        $Val extends BloodCampHistoryModel>
    implements $BloodCampHistoryModelCopyWith<$Res> {
  _$BloodCampHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campid = null,
    Object? ndate = null,
    Object? nepalidate = null,
    Object? camporganizer = null,
    Object? camplocation = null,
  }) {
    return _then(_value.copyWith(
      campid: null == campid
          ? _value.campid
          : campid // ignore: cast_nullable_to_non_nullable
              as int,
      ndate: null == ndate
          ? _value.ndate
          : ndate // ignore: cast_nullable_to_non_nullable
              as String,
      nepalidate: null == nepalidate
          ? _value.nepalidate
          : nepalidate // ignore: cast_nullable_to_non_nullable
              as String,
      camporganizer: null == camporganizer
          ? _value.camporganizer
          : camporganizer // ignore: cast_nullable_to_non_nullable
              as String,
      camplocation: null == camplocation
          ? _value.camplocation
          : camplocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BloodCampHistoryModelCopyWith<$Res>
    implements $BloodCampHistoryModelCopyWith<$Res> {
  factory _$$_BloodCampHistoryModelCopyWith(_$_BloodCampHistoryModel value,
          $Res Function(_$_BloodCampHistoryModel) then) =
      __$$_BloodCampHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int campid,
      String ndate,
      String nepalidate,
      String camporganizer,
      String camplocation});
}

/// @nodoc
class __$$_BloodCampHistoryModelCopyWithImpl<$Res>
    extends _$BloodCampHistoryModelCopyWithImpl<$Res, _$_BloodCampHistoryModel>
    implements _$$_BloodCampHistoryModelCopyWith<$Res> {
  __$$_BloodCampHistoryModelCopyWithImpl(_$_BloodCampHistoryModel _value,
      $Res Function(_$_BloodCampHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campid = null,
    Object? ndate = null,
    Object? nepalidate = null,
    Object? camporganizer = null,
    Object? camplocation = null,
  }) {
    return _then(_$_BloodCampHistoryModel(
      campid: null == campid
          ? _value.campid
          : campid // ignore: cast_nullable_to_non_nullable
              as int,
      ndate: null == ndate
          ? _value.ndate
          : ndate // ignore: cast_nullable_to_non_nullable
              as String,
      nepalidate: null == nepalidate
          ? _value.nepalidate
          : nepalidate // ignore: cast_nullable_to_non_nullable
              as String,
      camporganizer: null == camporganizer
          ? _value.camporganizer
          : camporganizer // ignore: cast_nullable_to_non_nullable
              as String,
      camplocation: null == camplocation
          ? _value.camplocation
          : camplocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BloodCampHistoryModel implements _BloodCampHistoryModel {
  const _$_BloodCampHistoryModel(
      {required this.campid,
      required this.ndate,
      required this.nepalidate,
      required this.camporganizer,
      required this.camplocation});

  factory _$_BloodCampHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_BloodCampHistoryModelFromJson(json);

  @override
  final int campid;
  @override
  final String ndate;
  @override
  final String nepalidate;
  @override
  final String camporganizer;
  @override
  final String camplocation;

  @override
  String toString() {
    return 'BloodCampHistoryModel(campid: $campid, ndate: $ndate, nepalidate: $nepalidate, camporganizer: $camporganizer, camplocation: $camplocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodCampHistoryModel &&
            (identical(other.campid, campid) || other.campid == campid) &&
            (identical(other.ndate, ndate) || other.ndate == ndate) &&
            (identical(other.nepalidate, nepalidate) ||
                other.nepalidate == nepalidate) &&
            (identical(other.camporganizer, camporganizer) ||
                other.camporganizer == camporganizer) &&
            (identical(other.camplocation, camplocation) ||
                other.camplocation == camplocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, campid, ndate, nepalidate, camporganizer, camplocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BloodCampHistoryModelCopyWith<_$_BloodCampHistoryModel> get copyWith =>
      __$$_BloodCampHistoryModelCopyWithImpl<_$_BloodCampHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BloodCampHistoryModelToJson(
      this,
    );
  }
}

abstract class _BloodCampHistoryModel implements BloodCampHistoryModel {
  const factory _BloodCampHistoryModel(
      {required final int campid,
      required final String ndate,
      required final String nepalidate,
      required final String camporganizer,
      required final String camplocation}) = _$_BloodCampHistoryModel;

  factory _BloodCampHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_BloodCampHistoryModel.fromJson;

  @override
  int get campid;
  @override
  String get ndate;
  @override
  String get nepalidate;
  @override
  String get camporganizer;
  @override
  String get camplocation;
  @override
  @JsonKey(ignore: true)
  _$$_BloodCampHistoryModelCopyWith<_$_BloodCampHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BloodBankModel _$BloodBankModelFromJson(Map<String, dynamic> json) {
  return _BloodBankModel.fromJson(json);
}

/// @nodoc
mixin _$BloodBankModel {
  int get id => throw _privateConstructorUsedError;
  String get blood_bank_name => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BloodBankModelCopyWith<BloodBankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodBankModelCopyWith<$Res> {
  factory $BloodBankModelCopyWith(
          BloodBankModel value, $Res Function(BloodBankModel) then) =
      _$BloodBankModelCopyWithImpl<$Res, BloodBankModel>;
  @useResult
  $Res call(
      {int id,
      String blood_bank_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class _$BloodBankModelCopyWithImpl<$Res, $Val extends BloodBankModel>
    implements $BloodBankModelCopyWith<$Res> {
  _$BloodBankModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blood_bank_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      blood_bank_name: null == blood_bank_name
          ? _value.blood_bank_name
          : blood_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BloodBankModelCopyWith<$Res>
    implements $BloodBankModelCopyWith<$Res> {
  factory _$$_BloodBankModelCopyWith(
          _$_BloodBankModel value, $Res Function(_$_BloodBankModel) then) =
      __$$_BloodBankModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String blood_bank_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class __$$_BloodBankModelCopyWithImpl<$Res>
    extends _$BloodBankModelCopyWithImpl<$Res, _$_BloodBankModel>
    implements _$$_BloodBankModelCopyWith<$Res> {
  __$$_BloodBankModelCopyWithImpl(
      _$_BloodBankModel _value, $Res Function(_$_BloodBankModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blood_bank_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_$_BloodBankModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      blood_bank_name: null == blood_bank_name
          ? _value.blood_bank_name
          : blood_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BloodBankModel implements _BloodBankModel {
  const _$_BloodBankModel(
      {required this.id,
      required this.blood_bank_name,
      required this.contact,
      required this.address,
      required this.created_at});

  factory _$_BloodBankModel.fromJson(Map<String, dynamic> json) =>
      _$$_BloodBankModelFromJson(json);

  @override
  final int id;
  @override
  final String blood_bank_name;
  @override
  final String contact;
  @override
  final String address;
  @override
  final String created_at;

  @override
  String toString() {
    return 'BloodBankModel(id: $id, blood_bank_name: $blood_bank_name, contact: $contact, address: $address, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodBankModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.blood_bank_name, blood_bank_name) ||
                other.blood_bank_name == blood_bank_name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, blood_bank_name, contact, address, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BloodBankModelCopyWith<_$_BloodBankModel> get copyWith =>
      __$$_BloodBankModelCopyWithImpl<_$_BloodBankModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BloodBankModelToJson(
      this,
    );
  }
}

abstract class _BloodBankModel implements BloodBankModel {
  const factory _BloodBankModel(
      {required final int id,
      required final String blood_bank_name,
      required final String contact,
      required final String address,
      required final String created_at}) = _$_BloodBankModel;

  factory _BloodBankModel.fromJson(Map<String, dynamic> json) =
      _$_BloodBankModel.fromJson;

  @override
  int get id;
  @override
  String get blood_bank_name;
  @override
  String get contact;
  @override
  String get address;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_BloodBankModelCopyWith<_$_BloodBankModel> get copyWith =>
      throw _privateConstructorUsedError;
}
