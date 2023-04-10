// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookCampRequest _$$_BookCampRequestFromJson(Map<String, dynamic> json) =>
    _$_BookCampRequest(
      name: json['name'] as String,
      organizer_name: json['organizer_name'] as String,
      venue: json['venue'] as String,
      date_time: json['date_time'] as String,
      donors_no: json['donors_no'] as String,
      phone_number: json['phone_number'] as String,
      email: json['email'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_BookCampRequestToJson(_$_BookCampRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'organizer_name': instance.organizer_name,
      'venue': instance.venue,
      'date_time': instance.date_time,
      'donors_no': instance.donors_no,
      'phone_number': instance.phone_number,
      'email': instance.email,
      'message': instance.message,
    };
