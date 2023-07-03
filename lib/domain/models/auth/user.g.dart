// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      donorCardId: json['donorcardid'] as int,
      name: json['name'] as String,
      dateOfBirth: json['dobndate'] as String,
      nepaliDateOfBirth: json['dobnepalidate'] as String,
      sex: json['sex'] as String,
      bloodgroup: json['bloodgroup'] as String,
      mobile: json['mobile'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'donorcardid': instance.donorCardId,
      'name': instance.name,
      'dobndate': instance.dateOfBirth,
      'dobnepalidate': instance.nepaliDateOfBirth,
      'sex': instance.sex,
      'bloodgroup': instance.bloodgroup,
      'mobile': instance.mobile,
      'address': instance.address,
      'email': instance.email,
    };

_$_OrganizationUserModel _$$_OrganizationUserModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrganizationUserModel(
      userId: json['user_id'] as String,
      username: json['user_name'] as String,
      name: json['fullname'] as String,
      phone: json['phonemobile'] as String,
      email: json['panemail'] as String,
      authtoken: json['authtoken'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_OrganizationUserModelToJson(
        _$_OrganizationUserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.username,
      'fullname': instance.name,
      'phonemobile': instance.phone,
      'panemail': instance.email,
      'authtoken': instance.authtoken,
      'address': instance.address,
    };
