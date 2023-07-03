// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DonorRegisterRequest _$$_DonorRegisterRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DonorRegisterRequest(
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      bloodGroup: json['bloodGroup'] as String,
      age: json['age'] as int,
      gender: json['gender'] as String,
      address: json['address'] as String,
      lastDonatedDate: json['lastDonatedDate'] as String?,
    );

Map<String, dynamic> _$$_DonorRegisterRequestToJson(
        _$_DonorRegisterRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'bloodGroup': instance.bloodGroup,
      'age': instance.age,
      'gender': instance.gender,
      'address': instance.address,
      'lastDonatedDate': instance.lastDonatedDate,
    };
