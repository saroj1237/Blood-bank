// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aph_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AmbulanceModel _$$_AmbulanceModelFromJson(Map<String, dynamic> json) =>
    _$_AmbulanceModel(
      id: json['id'] as int,
      club_name: json['club_name'] as String,
      contact: json['contact'] as String,
      address: json['address'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_AmbulanceModelToJson(_$_AmbulanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'club_name': instance.club_name,
      'contact': instance.contact,
      'address': instance.address,
      'created_at': instance.created_at,
    };

_$_HospitalModel _$$_HospitalModelFromJson(Map<String, dynamic> json) =>
    _$_HospitalModel(
      id: json['id'] as int,
      hospital_name: json['hospital_name'] as String,
      contact: json['contact'] as String,
      address: json['address'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_HospitalModelToJson(_$_HospitalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hospital_name': instance.hospital_name,
      'contact': instance.contact,
      'address': instance.address,
      'created_at': instance.created_at,
    };

_$_PharmacyModel _$$_PharmacyModelFromJson(Map<String, dynamic> json) =>
    _$_PharmacyModel(
      id: json['id'] as int,
      pharmacy_name: json['pharmacy_name'] as String,
      contact: json['contact'] as String,
      address: json['address'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_PharmacyModelToJson(_$_PharmacyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pharmacy_name': instance.pharmacy_name,
      'contact': instance.contact,
      'address': instance.address,
      'created_at': instance.created_at,
    };
