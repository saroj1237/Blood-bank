// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camp_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BloodCampHistoryModel _$$_BloodCampHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_BloodCampHistoryModel(
      campid: json['campid'] as int,
      ndate: json['ndate'] as String,
      nepalidate: json['nepalidate'] as String,
      camporganizer: json['camporganizer'] as String,
      camplocation: json['camplocation'] as String,
    );

Map<String, dynamic> _$$_BloodCampHistoryModelToJson(
        _$_BloodCampHistoryModel instance) =>
    <String, dynamic>{
      'campid': instance.campid,
      'ndate': instance.ndate,
      'nepalidate': instance.nepalidate,
      'camporganizer': instance.camporganizer,
      'camplocation': instance.camplocation,
    };

_$_BloodBankModel _$$_BloodBankModelFromJson(Map<String, dynamic> json) =>
    _$_BloodBankModel(
      id: json['id'] as int,
      blood_bank_name: json['blood_bank_name'] as String,
      contact: json['contact'] as String,
      address: json['address'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$_BloodBankModelToJson(_$_BloodBankModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blood_bank_name': instance.blood_bank_name,
      'contact': instance.contact,
      'address': instance.address,
      'created_at': instance.created_at,
    };
