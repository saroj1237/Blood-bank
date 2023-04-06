// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BloodStock _$$_BloodStockFromJson(Map<String, dynamic> json) =>
    _$_BloodStock(
      bloodGroup: json['bloodGroup'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_BloodStockToJson(_$_BloodStock instance) =>
    <String, dynamic>{
      'bloodGroup': instance.bloodGroup,
    };

_$_RequestBlood _$$_RequestBloodFromJson(Map<String, dynamic> json) =>
    _$_RequestBlood(
      bloodGroup: json['bloodGroup'] as String,
      patientTitle: json['patienttitle'] as String? ?? "Mr.",
      patientName: json['patientname'] as String,
      patientAge: json['patientage'] as int,
      patientGender: json['patientsex'] as String,
      hospitalName: json['hospitalname'] as String,
      isGovernmentHospital: json['isgovernmenthospital'] as bool? ?? true,
      contact: json['contact'] as String,
      remarks: json['remarks'] as String,
      wbreqcount: json['wbreqcount'] as int? ?? 1,
      prbcreqcount: json['prbcreqcount'] as int? ?? 0,
      pcreqcount: json['pcreqcount'] as int? ?? 0,
      prpreqcount: json['prpreqcount'] as int? ?? 0,
      ffpreqcount: json['ffpreqcount'] as int? ?? 0,
      ccpreqcount: json['ccpreqcount'] as int? ?? 0,
      cryoreqcount: json['cryoreqcount'] as int? ?? 0,
      requestedplasma: json['requestedplasma'] as bool? ?? true,
      requestedplatelets: json['requestedplatelets'] as bool? ?? false,
      requestedgcytes: json['requestedgcytes'] as bool? ?? false,
      requestedpbsc: json['requestedpbsc'] as bool? ?? false,
      requestedccp: json['requestedccp'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RequestBloodToJson(_$_RequestBlood instance) =>
    <String, dynamic>{
      'bloodGroup': instance.bloodGroup,
      'patienttitle': instance.patientTitle,
      'patientname': instance.patientName,
      'patientage': instance.patientAge,
      'patientsex': instance.patientGender,
      'hospitalname': instance.hospitalName,
      'isgovernmenthospital': instance.isGovernmentHospital,
      'contact': instance.contact,
      'remarks': instance.remarks,
      'wbreqcount': instance.wbreqcount,
      'prbcreqcount': instance.prbcreqcount,
      'pcreqcount': instance.pcreqcount,
      'prpreqcount': instance.prpreqcount,
      'ffpreqcount': instance.ffpreqcount,
      'ccpreqcount': instance.ccpreqcount,
      'cryoreqcount': instance.cryoreqcount,
      'requestedplasma': instance.requestedplasma,
      'requestedplatelets': instance.requestedplatelets,
      'requestedgcytes': instance.requestedgcytes,
      'requestedpbsc': instance.requestedpbsc,
      'requestedccp': instance.requestedccp,
    };
