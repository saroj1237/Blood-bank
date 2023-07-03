// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aph_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AmbulanceModel _$AmbulanceModelFromJson(Map<String, dynamic> json) {
  return _AmbulanceModel.fromJson(json);
}

/// @nodoc
mixin _$AmbulanceModel {
  int get id => throw _privateConstructorUsedError;
  String get club_name => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmbulanceModelCopyWith<AmbulanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmbulanceModelCopyWith<$Res> {
  factory $AmbulanceModelCopyWith(
          AmbulanceModel value, $Res Function(AmbulanceModel) then) =
      _$AmbulanceModelCopyWithImpl<$Res, AmbulanceModel>;
  @useResult
  $Res call(
      {int id,
      String club_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class _$AmbulanceModelCopyWithImpl<$Res, $Val extends AmbulanceModel>
    implements $AmbulanceModelCopyWith<$Res> {
  _$AmbulanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? club_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      club_name: null == club_name
          ? _value.club_name
          : club_name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_AmbulanceModelCopyWith<$Res>
    implements $AmbulanceModelCopyWith<$Res> {
  factory _$$_AmbulanceModelCopyWith(
          _$_AmbulanceModel value, $Res Function(_$_AmbulanceModel) then) =
      __$$_AmbulanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String club_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class __$$_AmbulanceModelCopyWithImpl<$Res>
    extends _$AmbulanceModelCopyWithImpl<$Res, _$_AmbulanceModel>
    implements _$$_AmbulanceModelCopyWith<$Res> {
  __$$_AmbulanceModelCopyWithImpl(
      _$_AmbulanceModel _value, $Res Function(_$_AmbulanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? club_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_$_AmbulanceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      club_name: null == club_name
          ? _value.club_name
          : club_name // ignore: cast_nullable_to_non_nullable
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
class _$_AmbulanceModel
    with DiagnosticableTreeMixin
    implements _AmbulanceModel {
  const _$_AmbulanceModel(
      {required this.id,
      required this.club_name,
      required this.contact,
      required this.address,
      required this.created_at});

  factory _$_AmbulanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_AmbulanceModelFromJson(json);

  @override
  final int id;
  @override
  final String club_name;
  @override
  final String contact;
  @override
  final String address;
  @override
  final String created_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AmbulanceModel(id: $id, club_name: $club_name, contact: $contact, address: $address, created_at: $created_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AmbulanceModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('club_name', club_name))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('created_at', created_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmbulanceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.club_name, club_name) ||
                other.club_name == club_name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, club_name, contact, address, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmbulanceModelCopyWith<_$_AmbulanceModel> get copyWith =>
      __$$_AmbulanceModelCopyWithImpl<_$_AmbulanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmbulanceModelToJson(
      this,
    );
  }
}

abstract class _AmbulanceModel implements AmbulanceModel {
  const factory _AmbulanceModel(
      {required final int id,
      required final String club_name,
      required final String contact,
      required final String address,
      required final String created_at}) = _$_AmbulanceModel;

  factory _AmbulanceModel.fromJson(Map<String, dynamic> json) =
      _$_AmbulanceModel.fromJson;

  @override
  int get id;
  @override
  String get club_name;
  @override
  String get contact;
  @override
  String get address;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_AmbulanceModelCopyWith<_$_AmbulanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

HospitalModel _$HospitalModelFromJson(Map<String, dynamic> json) {
  return _HospitalModel.fromJson(json);
}

/// @nodoc
mixin _$HospitalModel {
  int get id => throw _privateConstructorUsedError;
  String get hospital_name => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HospitalModelCopyWith<HospitalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalModelCopyWith<$Res> {
  factory $HospitalModelCopyWith(
          HospitalModel value, $Res Function(HospitalModel) then) =
      _$HospitalModelCopyWithImpl<$Res, HospitalModel>;
  @useResult
  $Res call(
      {int id,
      String hospital_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class _$HospitalModelCopyWithImpl<$Res, $Val extends HospitalModel>
    implements $HospitalModelCopyWith<$Res> {
  _$HospitalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hospital_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hospital_name: null == hospital_name
          ? _value.hospital_name
          : hospital_name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_HospitalModelCopyWith<$Res>
    implements $HospitalModelCopyWith<$Res> {
  factory _$$_HospitalModelCopyWith(
          _$_HospitalModel value, $Res Function(_$_HospitalModel) then) =
      __$$_HospitalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String hospital_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class __$$_HospitalModelCopyWithImpl<$Res>
    extends _$HospitalModelCopyWithImpl<$Res, _$_HospitalModel>
    implements _$$_HospitalModelCopyWith<$Res> {
  __$$_HospitalModelCopyWithImpl(
      _$_HospitalModel _value, $Res Function(_$_HospitalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hospital_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_$_HospitalModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hospital_name: null == hospital_name
          ? _value.hospital_name
          : hospital_name // ignore: cast_nullable_to_non_nullable
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
class _$_HospitalModel with DiagnosticableTreeMixin implements _HospitalModel {
  const _$_HospitalModel(
      {required this.id,
      required this.hospital_name,
      required this.contact,
      required this.address,
      required this.created_at});

  factory _$_HospitalModel.fromJson(Map<String, dynamic> json) =>
      _$$_HospitalModelFromJson(json);

  @override
  final int id;
  @override
  final String hospital_name;
  @override
  final String contact;
  @override
  final String address;
  @override
  final String created_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HospitalModel(id: $id, hospital_name: $hospital_name, contact: $contact, address: $address, created_at: $created_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HospitalModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('hospital_name', hospital_name))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('created_at', created_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HospitalModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hospital_name, hospital_name) ||
                other.hospital_name == hospital_name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, hospital_name, contact, address, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HospitalModelCopyWith<_$_HospitalModel> get copyWith =>
      __$$_HospitalModelCopyWithImpl<_$_HospitalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HospitalModelToJson(
      this,
    );
  }
}

abstract class _HospitalModel implements HospitalModel {
  const factory _HospitalModel(
      {required final int id,
      required final String hospital_name,
      required final String contact,
      required final String address,
      required final String created_at}) = _$_HospitalModel;

  factory _HospitalModel.fromJson(Map<String, dynamic> json) =
      _$_HospitalModel.fromJson;

  @override
  int get id;
  @override
  String get hospital_name;
  @override
  String get contact;
  @override
  String get address;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_HospitalModelCopyWith<_$_HospitalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PharmacyModel _$PharmacyModelFromJson(Map<String, dynamic> json) {
  return _PharmacyModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyModel {
  int get id => throw _privateConstructorUsedError;
  String get pharmacy_name => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyModelCopyWith<PharmacyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyModelCopyWith<$Res> {
  factory $PharmacyModelCopyWith(
          PharmacyModel value, $Res Function(PharmacyModel) then) =
      _$PharmacyModelCopyWithImpl<$Res, PharmacyModel>;
  @useResult
  $Res call(
      {int id,
      String pharmacy_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class _$PharmacyModelCopyWithImpl<$Res, $Val extends PharmacyModel>
    implements $PharmacyModelCopyWith<$Res> {
  _$PharmacyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pharmacy_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pharmacy_name: null == pharmacy_name
          ? _value.pharmacy_name
          : pharmacy_name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PharmacyModelCopyWith<$Res>
    implements $PharmacyModelCopyWith<$Res> {
  factory _$$_PharmacyModelCopyWith(
          _$_PharmacyModel value, $Res Function(_$_PharmacyModel) then) =
      __$$_PharmacyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String pharmacy_name,
      String contact,
      String address,
      String created_at});
}

/// @nodoc
class __$$_PharmacyModelCopyWithImpl<$Res>
    extends _$PharmacyModelCopyWithImpl<$Res, _$_PharmacyModel>
    implements _$$_PharmacyModelCopyWith<$Res> {
  __$$_PharmacyModelCopyWithImpl(
      _$_PharmacyModel _value, $Res Function(_$_PharmacyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pharmacy_name = null,
    Object? contact = null,
    Object? address = null,
    Object? created_at = null,
  }) {
    return _then(_$_PharmacyModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pharmacy_name: null == pharmacy_name
          ? _value.pharmacy_name
          : pharmacy_name // ignore: cast_nullable_to_non_nullable
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
class _$_PharmacyModel with DiagnosticableTreeMixin implements _PharmacyModel {
  const _$_PharmacyModel(
      {required this.id,
      required this.pharmacy_name,
      required this.contact,
      required this.address,
      required this.created_at});

  factory _$_PharmacyModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyModelFromJson(json);

  @override
  final int id;
  @override
  final String pharmacy_name;
  @override
  final String contact;
  @override
  final String address;
  @override
  final String created_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PharmacyModel(id: $id, pharmacy_name: $pharmacy_name, contact: $contact, address: $address, created_at: $created_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PharmacyModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('pharmacy_name', pharmacy_name))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('created_at', created_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pharmacy_name, pharmacy_name) ||
                other.pharmacy_name == pharmacy_name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pharmacy_name, contact, address, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyModelCopyWith<_$_PharmacyModel> get copyWith =>
      __$$_PharmacyModelCopyWithImpl<_$_PharmacyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyModelToJson(
      this,
    );
  }
}

abstract class _PharmacyModel implements PharmacyModel {
  const factory _PharmacyModel(
      {required final int id,
      required final String pharmacy_name,
      required final String contact,
      required final String address,
      required final String created_at}) = _$_PharmacyModel;

  factory _PharmacyModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyModel.fromJson;

  @override
  int get id;
  @override
  String get pharmacy_name;
  @override
  String get contact;
  @override
  String get address;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyModelCopyWith<_$_PharmacyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
