// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BloodStock _$BloodStockFromJson(Map<String, dynamic> json) {
  return _BloodStock.fromJson(json);
}

/// @nodoc
mixin _$BloodStock {
  Map<String, dynamic> get bloodGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BloodStockCopyWith<BloodStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodStockCopyWith<$Res> {
  factory $BloodStockCopyWith(
          BloodStock value, $Res Function(BloodStock) then) =
      _$BloodStockCopyWithImpl<$Res, BloodStock>;
  @useResult
  $Res call({Map<String, dynamic> bloodGroup});
}

/// @nodoc
class _$BloodStockCopyWithImpl<$Res, $Val extends BloodStock>
    implements $BloodStockCopyWith<$Res> {
  _$BloodStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodGroup = null,
  }) {
    return _then(_value.copyWith(
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BloodStockCopyWith<$Res>
    implements $BloodStockCopyWith<$Res> {
  factory _$$_BloodStockCopyWith(
          _$_BloodStock value, $Res Function(_$_BloodStock) then) =
      __$$_BloodStockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> bloodGroup});
}

/// @nodoc
class __$$_BloodStockCopyWithImpl<$Res>
    extends _$BloodStockCopyWithImpl<$Res, _$_BloodStock>
    implements _$$_BloodStockCopyWith<$Res> {
  __$$_BloodStockCopyWithImpl(
      _$_BloodStock _value, $Res Function(_$_BloodStock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodGroup = null,
  }) {
    return _then(_$_BloodStock(
      bloodGroup: null == bloodGroup
          ? _value._bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BloodStock implements _BloodStock {
  const _$_BloodStock({required final Map<String, dynamic> bloodGroup})
      : _bloodGroup = bloodGroup;

  factory _$_BloodStock.fromJson(Map<String, dynamic> json) =>
      _$$_BloodStockFromJson(json);

  final Map<String, dynamic> _bloodGroup;
  @override
  Map<String, dynamic> get bloodGroup {
    if (_bloodGroup is EqualUnmodifiableMapView) return _bloodGroup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bloodGroup);
  }

  @override
  String toString() {
    return 'BloodStock(bloodGroup: $bloodGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodStock &&
            const DeepCollectionEquality()
                .equals(other._bloodGroup, _bloodGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bloodGroup));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BloodStockCopyWith<_$_BloodStock> get copyWith =>
      __$$_BloodStockCopyWithImpl<_$_BloodStock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BloodStockToJson(
      this,
    );
  }
}

abstract class _BloodStock implements BloodStock {
  const factory _BloodStock({required final Map<String, dynamic> bloodGroup}) =
      _$_BloodStock;

  factory _BloodStock.fromJson(Map<String, dynamic> json) =
      _$_BloodStock.fromJson;

  @override
  Map<String, dynamic> get bloodGroup;
  @override
  @JsonKey(ignore: true)
  _$$_BloodStockCopyWith<_$_BloodStock> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestBloodReq _$RequestBloodReqFromJson(Map<String, dynamic> json) {
  return _RequestBloodReq.fromJson(json);
}

/// @nodoc
mixin _$RequestBloodReq {
  String get bloodGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "patienttitle")
  String get patientTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "patientname")
  String get patientName => throw _privateConstructorUsedError;
  @JsonKey(name: "patientage")
  int get patientAge => throw _privateConstructorUsedError;
  @JsonKey(name: "patientsex")
  String get patientGender => throw _privateConstructorUsedError;
  @JsonKey(name: "hospitalname")
  String get hospitalName => throw _privateConstructorUsedError;
  @JsonKey(name: "isgovernmenthospital")
  bool get isGovernmentHospital => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  int get wbreqcount => throw _privateConstructorUsedError;
  int get prbcreqcount => throw _privateConstructorUsedError;
  int get pcreqcount => throw _privateConstructorUsedError;
  int get prpreqcount => throw _privateConstructorUsedError;
  int get ffpreqcount => throw _privateConstructorUsedError;
  int get ccpreqcount => throw _privateConstructorUsedError;
  int get cryoreqcount => throw _privateConstructorUsedError;
  bool get requestedplasma => throw _privateConstructorUsedError;
  bool get requestedplatelets => throw _privateConstructorUsedError;
  bool get requestedgcytes => throw _privateConstructorUsedError;
  bool get requestedpbsc => throw _privateConstructorUsedError;
  bool get requestedccp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestBloodReqCopyWith<RequestBloodReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBloodReqCopyWith<$Res> {
  factory $RequestBloodReqCopyWith(
          RequestBloodReq value, $Res Function(RequestBloodReq) then) =
      _$RequestBloodReqCopyWithImpl<$Res, RequestBloodReq>;
  @useResult
  $Res call(
      {String bloodGroup,
      @JsonKey(name: "patienttitle") String patientTitle,
      @JsonKey(name: "patientname") String patientName,
      @JsonKey(name: "patientage") int patientAge,
      @JsonKey(name: "patientsex") String patientGender,
      @JsonKey(name: "hospitalname") String hospitalName,
      @JsonKey(name: "isgovernmenthospital") bool isGovernmentHospital,
      String contact,
      String remarks,
      int wbreqcount,
      int prbcreqcount,
      int pcreqcount,
      int prpreqcount,
      int ffpreqcount,
      int ccpreqcount,
      int cryoreqcount,
      bool requestedplasma,
      bool requestedplatelets,
      bool requestedgcytes,
      bool requestedpbsc,
      bool requestedccp});
}

/// @nodoc
class _$RequestBloodReqCopyWithImpl<$Res, $Val extends RequestBloodReq>
    implements $RequestBloodReqCopyWith<$Res> {
  _$RequestBloodReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodGroup = null,
    Object? patientTitle = null,
    Object? patientName = null,
    Object? patientAge = null,
    Object? patientGender = null,
    Object? hospitalName = null,
    Object? isGovernmentHospital = null,
    Object? contact = null,
    Object? remarks = null,
    Object? wbreqcount = null,
    Object? prbcreqcount = null,
    Object? pcreqcount = null,
    Object? prpreqcount = null,
    Object? ffpreqcount = null,
    Object? ccpreqcount = null,
    Object? cryoreqcount = null,
    Object? requestedplasma = null,
    Object? requestedplatelets = null,
    Object? requestedgcytes = null,
    Object? requestedpbsc = null,
    Object? requestedccp = null,
  }) {
    return _then(_value.copyWith(
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      patientTitle: null == patientTitle
          ? _value.patientTitle
          : patientTitle // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientAge: null == patientAge
          ? _value.patientAge
          : patientAge // ignore: cast_nullable_to_non_nullable
              as int,
      patientGender: null == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      isGovernmentHospital: null == isGovernmentHospital
          ? _value.isGovernmentHospital
          : isGovernmentHospital // ignore: cast_nullable_to_non_nullable
              as bool,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      wbreqcount: null == wbreqcount
          ? _value.wbreqcount
          : wbreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      prbcreqcount: null == prbcreqcount
          ? _value.prbcreqcount
          : prbcreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      pcreqcount: null == pcreqcount
          ? _value.pcreqcount
          : pcreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      prpreqcount: null == prpreqcount
          ? _value.prpreqcount
          : prpreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      ffpreqcount: null == ffpreqcount
          ? _value.ffpreqcount
          : ffpreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      ccpreqcount: null == ccpreqcount
          ? _value.ccpreqcount
          : ccpreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      cryoreqcount: null == cryoreqcount
          ? _value.cryoreqcount
          : cryoreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      requestedplasma: null == requestedplasma
          ? _value.requestedplasma
          : requestedplasma // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedplatelets: null == requestedplatelets
          ? _value.requestedplatelets
          : requestedplatelets // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedgcytes: null == requestedgcytes
          ? _value.requestedgcytes
          : requestedgcytes // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedpbsc: null == requestedpbsc
          ? _value.requestedpbsc
          : requestedpbsc // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedccp: null == requestedccp
          ? _value.requestedccp
          : requestedccp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestBloodReqCopyWith<$Res>
    implements $RequestBloodReqCopyWith<$Res> {
  factory _$$_RequestBloodReqCopyWith(
          _$_RequestBloodReq value, $Res Function(_$_RequestBloodReq) then) =
      __$$_RequestBloodReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bloodGroup,
      @JsonKey(name: "patienttitle") String patientTitle,
      @JsonKey(name: "patientname") String patientName,
      @JsonKey(name: "patientage") int patientAge,
      @JsonKey(name: "patientsex") String patientGender,
      @JsonKey(name: "hospitalname") String hospitalName,
      @JsonKey(name: "isgovernmenthospital") bool isGovernmentHospital,
      String contact,
      String remarks,
      int wbreqcount,
      int prbcreqcount,
      int pcreqcount,
      int prpreqcount,
      int ffpreqcount,
      int ccpreqcount,
      int cryoreqcount,
      bool requestedplasma,
      bool requestedplatelets,
      bool requestedgcytes,
      bool requestedpbsc,
      bool requestedccp});
}

/// @nodoc
class __$$_RequestBloodReqCopyWithImpl<$Res>
    extends _$RequestBloodReqCopyWithImpl<$Res, _$_RequestBloodReq>
    implements _$$_RequestBloodReqCopyWith<$Res> {
  __$$_RequestBloodReqCopyWithImpl(
      _$_RequestBloodReq _value, $Res Function(_$_RequestBloodReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodGroup = null,
    Object? patientTitle = null,
    Object? patientName = null,
    Object? patientAge = null,
    Object? patientGender = null,
    Object? hospitalName = null,
    Object? isGovernmentHospital = null,
    Object? contact = null,
    Object? remarks = null,
    Object? wbreqcount = null,
    Object? prbcreqcount = null,
    Object? pcreqcount = null,
    Object? prpreqcount = null,
    Object? ffpreqcount = null,
    Object? ccpreqcount = null,
    Object? cryoreqcount = null,
    Object? requestedplasma = null,
    Object? requestedplatelets = null,
    Object? requestedgcytes = null,
    Object? requestedpbsc = null,
    Object? requestedccp = null,
  }) {
    return _then(_$_RequestBloodReq(
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      patientTitle: null == patientTitle
          ? _value.patientTitle
          : patientTitle // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientAge: null == patientAge
          ? _value.patientAge
          : patientAge // ignore: cast_nullable_to_non_nullable
              as int,
      patientGender: null == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      isGovernmentHospital: null == isGovernmentHospital
          ? _value.isGovernmentHospital
          : isGovernmentHospital // ignore: cast_nullable_to_non_nullable
              as bool,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      wbreqcount: null == wbreqcount
          ? _value.wbreqcount
          : wbreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      prbcreqcount: null == prbcreqcount
          ? _value.prbcreqcount
          : prbcreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      pcreqcount: null == pcreqcount
          ? _value.pcreqcount
          : pcreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      prpreqcount: null == prpreqcount
          ? _value.prpreqcount
          : prpreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      ffpreqcount: null == ffpreqcount
          ? _value.ffpreqcount
          : ffpreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      ccpreqcount: null == ccpreqcount
          ? _value.ccpreqcount
          : ccpreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      cryoreqcount: null == cryoreqcount
          ? _value.cryoreqcount
          : cryoreqcount // ignore: cast_nullable_to_non_nullable
              as int,
      requestedplasma: null == requestedplasma
          ? _value.requestedplasma
          : requestedplasma // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedplatelets: null == requestedplatelets
          ? _value.requestedplatelets
          : requestedplatelets // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedgcytes: null == requestedgcytes
          ? _value.requestedgcytes
          : requestedgcytes // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedpbsc: null == requestedpbsc
          ? _value.requestedpbsc
          : requestedpbsc // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedccp: null == requestedccp
          ? _value.requestedccp
          : requestedccp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestBloodReq implements _RequestBloodReq {
  const _$_RequestBloodReq(
      {required this.bloodGroup,
      @JsonKey(name: "patienttitle") this.patientTitle = "Mr.",
      @JsonKey(name: "patientname") required this.patientName,
      @JsonKey(name: "patientage") required this.patientAge,
      @JsonKey(name: "patientsex") required this.patientGender,
      @JsonKey(name: "hospitalname") required this.hospitalName,
      @JsonKey(name: "isgovernmenthospital") this.isGovernmentHospital = true,
      required this.contact,
      required this.remarks,
      this.wbreqcount = 1,
      this.prbcreqcount = 0,
      this.pcreqcount = 0,
      this.prpreqcount = 0,
      this.ffpreqcount = 0,
      this.ccpreqcount = 0,
      this.cryoreqcount = 0,
      this.requestedplasma = true,
      this.requestedplatelets = false,
      this.requestedgcytes = false,
      this.requestedpbsc = false,
      this.requestedccp = false});

  factory _$_RequestBloodReq.fromJson(Map<String, dynamic> json) =>
      _$$_RequestBloodReqFromJson(json);

  @override
  final String bloodGroup;
  @override
  @JsonKey(name: "patienttitle")
  final String patientTitle;
  @override
  @JsonKey(name: "patientname")
  final String patientName;
  @override
  @JsonKey(name: "patientage")
  final int patientAge;
  @override
  @JsonKey(name: "patientsex")
  final String patientGender;
  @override
  @JsonKey(name: "hospitalname")
  final String hospitalName;
  @override
  @JsonKey(name: "isgovernmenthospital")
  final bool isGovernmentHospital;
  @override
  final String contact;
  @override
  final String remarks;
  @override
  @JsonKey()
  final int wbreqcount;
  @override
  @JsonKey()
  final int prbcreqcount;
  @override
  @JsonKey()
  final int pcreqcount;
  @override
  @JsonKey()
  final int prpreqcount;
  @override
  @JsonKey()
  final int ffpreqcount;
  @override
  @JsonKey()
  final int ccpreqcount;
  @override
  @JsonKey()
  final int cryoreqcount;
  @override
  @JsonKey()
  final bool requestedplasma;
  @override
  @JsonKey()
  final bool requestedplatelets;
  @override
  @JsonKey()
  final bool requestedgcytes;
  @override
  @JsonKey()
  final bool requestedpbsc;
  @override
  @JsonKey()
  final bool requestedccp;

  @override
  String toString() {
    return 'RequestBloodReq(bloodGroup: $bloodGroup, patientTitle: $patientTitle, patientName: $patientName, patientAge: $patientAge, patientGender: $patientGender, hospitalName: $hospitalName, isGovernmentHospital: $isGovernmentHospital, contact: $contact, remarks: $remarks, wbreqcount: $wbreqcount, prbcreqcount: $prbcreqcount, pcreqcount: $pcreqcount, prpreqcount: $prpreqcount, ffpreqcount: $ffpreqcount, ccpreqcount: $ccpreqcount, cryoreqcount: $cryoreqcount, requestedplasma: $requestedplasma, requestedplatelets: $requestedplatelets, requestedgcytes: $requestedgcytes, requestedpbsc: $requestedpbsc, requestedccp: $requestedccp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestBloodReq &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.patientTitle, patientTitle) ||
                other.patientTitle == patientTitle) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.patientAge, patientAge) ||
                other.patientAge == patientAge) &&
            (identical(other.patientGender, patientGender) ||
                other.patientGender == patientGender) &&
            (identical(other.hospitalName, hospitalName) ||
                other.hospitalName == hospitalName) &&
            (identical(other.isGovernmentHospital, isGovernmentHospital) ||
                other.isGovernmentHospital == isGovernmentHospital) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.wbreqcount, wbreqcount) ||
                other.wbreqcount == wbreqcount) &&
            (identical(other.prbcreqcount, prbcreqcount) ||
                other.prbcreqcount == prbcreqcount) &&
            (identical(other.pcreqcount, pcreqcount) ||
                other.pcreqcount == pcreqcount) &&
            (identical(other.prpreqcount, prpreqcount) ||
                other.prpreqcount == prpreqcount) &&
            (identical(other.ffpreqcount, ffpreqcount) ||
                other.ffpreqcount == ffpreqcount) &&
            (identical(other.ccpreqcount, ccpreqcount) ||
                other.ccpreqcount == ccpreqcount) &&
            (identical(other.cryoreqcount, cryoreqcount) ||
                other.cryoreqcount == cryoreqcount) &&
            (identical(other.requestedplasma, requestedplasma) ||
                other.requestedplasma == requestedplasma) &&
            (identical(other.requestedplatelets, requestedplatelets) ||
                other.requestedplatelets == requestedplatelets) &&
            (identical(other.requestedgcytes, requestedgcytes) ||
                other.requestedgcytes == requestedgcytes) &&
            (identical(other.requestedpbsc, requestedpbsc) ||
                other.requestedpbsc == requestedpbsc) &&
            (identical(other.requestedccp, requestedccp) ||
                other.requestedccp == requestedccp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bloodGroup,
        patientTitle,
        patientName,
        patientAge,
        patientGender,
        hospitalName,
        isGovernmentHospital,
        contact,
        remarks,
        wbreqcount,
        prbcreqcount,
        pcreqcount,
        prpreqcount,
        ffpreqcount,
        ccpreqcount,
        cryoreqcount,
        requestedplasma,
        requestedplatelets,
        requestedgcytes,
        requestedpbsc,
        requestedccp
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestBloodReqCopyWith<_$_RequestBloodReq> get copyWith =>
      __$$_RequestBloodReqCopyWithImpl<_$_RequestBloodReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestBloodReqToJson(
      this,
    );
  }
}

abstract class _RequestBloodReq implements RequestBloodReq {
  const factory _RequestBloodReq(
      {required final String bloodGroup,
      @JsonKey(name: "patienttitle") final String patientTitle,
      @JsonKey(name: "patientname") required final String patientName,
      @JsonKey(name: "patientage") required final int patientAge,
      @JsonKey(name: "patientsex") required final String patientGender,
      @JsonKey(name: "hospitalname") required final String hospitalName,
      @JsonKey(name: "isgovernmenthospital") final bool isGovernmentHospital,
      required final String contact,
      required final String remarks,
      final int wbreqcount,
      final int prbcreqcount,
      final int pcreqcount,
      final int prpreqcount,
      final int ffpreqcount,
      final int ccpreqcount,
      final int cryoreqcount,
      final bool requestedplasma,
      final bool requestedplatelets,
      final bool requestedgcytes,
      final bool requestedpbsc,
      final bool requestedccp}) = _$_RequestBloodReq;

  factory _RequestBloodReq.fromJson(Map<String, dynamic> json) =
      _$_RequestBloodReq.fromJson;

  @override
  String get bloodGroup;
  @override
  @JsonKey(name: "patienttitle")
  String get patientTitle;
  @override
  @JsonKey(name: "patientname")
  String get patientName;
  @override
  @JsonKey(name: "patientage")
  int get patientAge;
  @override
  @JsonKey(name: "patientsex")
  String get patientGender;
  @override
  @JsonKey(name: "hospitalname")
  String get hospitalName;
  @override
  @JsonKey(name: "isgovernmenthospital")
  bool get isGovernmentHospital;
  @override
  String get contact;
  @override
  String get remarks;
  @override
  int get wbreqcount;
  @override
  int get prbcreqcount;
  @override
  int get pcreqcount;
  @override
  int get prpreqcount;
  @override
  int get ffpreqcount;
  @override
  int get ccpreqcount;
  @override
  int get cryoreqcount;
  @override
  bool get requestedplasma;
  @override
  bool get requestedplatelets;
  @override
  bool get requestedgcytes;
  @override
  bool get requestedpbsc;
  @override
  bool get requestedccp;
  @override
  @JsonKey(ignore: true)
  _$$_RequestBloodReqCopyWith<_$_RequestBloodReq> get copyWith =>
      throw _privateConstructorUsedError;
}

BloodRequest _$BloodRequestFromJson(Map<String, dynamic> json) {
  return _BloodRequest.fromJson(json);
}

/// @nodoc
mixin _$BloodRequest {
  @JsonKey(name: "patient_name")
  String get patientName => throw _privateConstructorUsedError;
  @JsonKey(name: "patient_bloodgroup")
  String get patientBloodGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get receptorName => throw _privateConstructorUsedError;
  @JsonKey(name: "admitted_hospital")
  String get hospitalName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'need_freshblood')
  bool get needFreshBlood => throw _privateConstructorUsedError;
  @JsonKey(name: "blood_qty")
  String get bloodQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "image", ignore: true)
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BloodRequestCopyWith<BloodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodRequestCopyWith<$Res> {
  factory $BloodRequestCopyWith(
          BloodRequest value, $Res Function(BloodRequest) then) =
      _$BloodRequestCopyWithImpl<$Res, BloodRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "patient_name") String patientName,
      @JsonKey(name: "patient_bloodgroup") String patientBloodGroup,
      @JsonKey(name: "name") String receptorName,
      @JsonKey(name: "admitted_hospital") String hospitalName,
      String email,
      String subject,
      String message,
      String phone,
      @JsonKey(name: 'need_freshblood') bool needFreshBlood,
      @JsonKey(name: "blood_qty") String bloodQuantity,
      @JsonKey(name: "image", ignore: true) String? imagePath});
}

/// @nodoc
class _$BloodRequestCopyWithImpl<$Res, $Val extends BloodRequest>
    implements $BloodRequestCopyWith<$Res> {
  _$BloodRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientName = null,
    Object? patientBloodGroup = null,
    Object? receptorName = null,
    Object? hospitalName = null,
    Object? email = null,
    Object? subject = null,
    Object? message = null,
    Object? phone = null,
    Object? needFreshBlood = null,
    Object? bloodQuantity = null,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientBloodGroup: null == patientBloodGroup
          ? _value.patientBloodGroup
          : patientBloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      receptorName: null == receptorName
          ? _value.receptorName
          : receptorName // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      needFreshBlood: null == needFreshBlood
          ? _value.needFreshBlood
          : needFreshBlood // ignore: cast_nullable_to_non_nullable
              as bool,
      bloodQuantity: null == bloodQuantity
          ? _value.bloodQuantity
          : bloodQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BloodRequestCopyWith<$Res>
    implements $BloodRequestCopyWith<$Res> {
  factory _$$_BloodRequestCopyWith(
          _$_BloodRequest value, $Res Function(_$_BloodRequest) then) =
      __$$_BloodRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "patient_name") String patientName,
      @JsonKey(name: "patient_bloodgroup") String patientBloodGroup,
      @JsonKey(name: "name") String receptorName,
      @JsonKey(name: "admitted_hospital") String hospitalName,
      String email,
      String subject,
      String message,
      String phone,
      @JsonKey(name: 'need_freshblood') bool needFreshBlood,
      @JsonKey(name: "blood_qty") String bloodQuantity,
      @JsonKey(name: "image", ignore: true) String? imagePath});
}

/// @nodoc
class __$$_BloodRequestCopyWithImpl<$Res>
    extends _$BloodRequestCopyWithImpl<$Res, _$_BloodRequest>
    implements _$$_BloodRequestCopyWith<$Res> {
  __$$_BloodRequestCopyWithImpl(
      _$_BloodRequest _value, $Res Function(_$_BloodRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientName = null,
    Object? patientBloodGroup = null,
    Object? receptorName = null,
    Object? hospitalName = null,
    Object? email = null,
    Object? subject = null,
    Object? message = null,
    Object? phone = null,
    Object? needFreshBlood = null,
    Object? bloodQuantity = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$_BloodRequest(
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientBloodGroup: null == patientBloodGroup
          ? _value.patientBloodGroup
          : patientBloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      receptorName: null == receptorName
          ? _value.receptorName
          : receptorName // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalName: null == hospitalName
          ? _value.hospitalName
          : hospitalName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      needFreshBlood: null == needFreshBlood
          ? _value.needFreshBlood
          : needFreshBlood // ignore: cast_nullable_to_non_nullable
              as bool,
      bloodQuantity: null == bloodQuantity
          ? _value.bloodQuantity
          : bloodQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BloodRequest implements _BloodRequest {
  const _$_BloodRequest(
      {@JsonKey(name: "patient_name") required this.patientName,
      @JsonKey(name: "patient_bloodgroup") required this.patientBloodGroup,
      @JsonKey(name: "name") required this.receptorName,
      @JsonKey(name: "admitted_hospital") required this.hospitalName,
      required this.email,
      required this.subject,
      required this.message,
      required this.phone,
      @JsonKey(name: 'need_freshblood') required this.needFreshBlood,
      @JsonKey(name: "blood_qty") required this.bloodQuantity,
      @JsonKey(name: "image", ignore: true) this.imagePath});

  factory _$_BloodRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BloodRequestFromJson(json);

  @override
  @JsonKey(name: "patient_name")
  final String patientName;
  @override
  @JsonKey(name: "patient_bloodgroup")
  final String patientBloodGroup;
  @override
  @JsonKey(name: "name")
  final String receptorName;
  @override
  @JsonKey(name: "admitted_hospital")
  final String hospitalName;
  @override
  final String email;
  @override
  final String subject;
  @override
  final String message;
  @override
  final String phone;
  @override
  @JsonKey(name: 'need_freshblood')
  final bool needFreshBlood;
  @override
  @JsonKey(name: "blood_qty")
  final String bloodQuantity;
  @override
  @JsonKey(name: "image", ignore: true)
  final String? imagePath;

  @override
  String toString() {
    return 'BloodRequest(patientName: $patientName, patientBloodGroup: $patientBloodGroup, receptorName: $receptorName, hospitalName: $hospitalName, email: $email, subject: $subject, message: $message, phone: $phone, needFreshBlood: $needFreshBlood, bloodQuantity: $bloodQuantity, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BloodRequest &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.patientBloodGroup, patientBloodGroup) ||
                other.patientBloodGroup == patientBloodGroup) &&
            (identical(other.receptorName, receptorName) ||
                other.receptorName == receptorName) &&
            (identical(other.hospitalName, hospitalName) ||
                other.hospitalName == hospitalName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.needFreshBlood, needFreshBlood) ||
                other.needFreshBlood == needFreshBlood) &&
            (identical(other.bloodQuantity, bloodQuantity) ||
                other.bloodQuantity == bloodQuantity) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patientName,
      patientBloodGroup,
      receptorName,
      hospitalName,
      email,
      subject,
      message,
      phone,
      needFreshBlood,
      bloodQuantity,
      imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BloodRequestCopyWith<_$_BloodRequest> get copyWith =>
      __$$_BloodRequestCopyWithImpl<_$_BloodRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BloodRequestToJson(
      this,
    );
  }
}

abstract class _BloodRequest implements BloodRequest {
  const factory _BloodRequest(
      {@JsonKey(name: "patient_name")
          required final String patientName,
      @JsonKey(name: "patient_bloodgroup")
          required final String patientBloodGroup,
      @JsonKey(name: "name")
          required final String receptorName,
      @JsonKey(name: "admitted_hospital")
          required final String hospitalName,
      required final String email,
      required final String subject,
      required final String message,
      required final String phone,
      @JsonKey(name: 'need_freshblood')
          required final bool needFreshBlood,
      @JsonKey(name: "blood_qty")
          required final String bloodQuantity,
      @JsonKey(name: "image", ignore: true)
          final String? imagePath}) = _$_BloodRequest;

  factory _BloodRequest.fromJson(Map<String, dynamic> json) =
      _$_BloodRequest.fromJson;

  @override
  @JsonKey(name: "patient_name")
  String get patientName;
  @override
  @JsonKey(name: "patient_bloodgroup")
  String get patientBloodGroup;
  @override
  @JsonKey(name: "name")
  String get receptorName;
  @override
  @JsonKey(name: "admitted_hospital")
  String get hospitalName;
  @override
  String get email;
  @override
  String get subject;
  @override
  String get message;
  @override
  String get phone;
  @override
  @JsonKey(name: 'need_freshblood')
  bool get needFreshBlood;
  @override
  @JsonKey(name: "blood_qty")
  String get bloodQuantity;
  @override
  @JsonKey(name: "image", ignore: true)
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_BloodRequestCopyWith<_$_BloodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
