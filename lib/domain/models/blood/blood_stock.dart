// ignore_for_file: invalid_annotation_target

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'blood_stock.freezed.dart';
part 'blood_stock.g.dart';

@freezed
class BloodStock with _$BloodStock {
  const factory BloodStock({
    required Map<String, dynamic> bloodGroup,
  }) = _BloodStock;
  factory BloodStock.fromJson(Map<String, dynamic> json) =>
      _$BloodStockFromJson(json);
}

@freezed
class RequestBloodReq with _$RequestBloodReq {
  const factory RequestBloodReq({
    required String bloodGroup,
    @JsonKey(name: "patienttitle") @Default("Mr.") String patientTitle,
    @JsonKey(name: "patientname") required String patientName,
    @JsonKey(name: "patientage") required int patientAge,
    @JsonKey(name: "patientsex") required String patientGender,
    @JsonKey(name: "hospitalname") required String hospitalName,
    @JsonKey(name: "isgovernmenthospital")
    @Default(true)
        bool isGovernmentHospital,
    required String contact,
    required String remarks,
    @Default(1) int wbreqcount,
    @Default(0) int prbcreqcount,
    @Default(0) int pcreqcount,
    @Default(0) int prpreqcount,
    @Default(0) int ffpreqcount,
    @Default(0) int ccpreqcount,
    @Default(0) int cryoreqcount,
    @Default(true) bool requestedplasma,
    @Default(false) bool requestedplatelets,
    @Default(false) bool requestedgcytes,
    @Default(false) bool requestedpbsc,
    @Default(false) bool requestedccp,
  }) = _RequestBloodReq;
  factory RequestBloodReq.fromJson(Map<String, dynamic> json) =>
      _$RequestBloodReqFromJson(json);
}

@freezed
class BloodRequest with _$BloodRequest {
  const factory BloodRequest({
    @JsonKey(name: "patient_name") required String patientName,
    @JsonKey(name: "patient_bloodgroup") required String patientBloodGroup,
    @JsonKey(name: "name") required String receptorName,
    @JsonKey(name: "admitted_hospital") required String hospitalName,
    required String email,
    required String subject,
    required String message,
    required String phone,
    @JsonKey(name: 'need_freshblood') required bool needFreshBlood,
    @JsonKey(name: "blood_qty") required String bloodQuantity,
    @JsonKey(name: "image", ignore: true) String? imagePath,
  }) = _BloodRequest;
  factory BloodRequest.fromJson(Map<String, dynamic> json) =>
      _$BloodRequestFromJson(json);
}

          // "name": [
          //       "The name field is required."
          //   ],
          //   "email": [
          //       "The email field is required."
          //   ],
          //   "subject": [
          //       "The subject field is required."
          //   ],
          //   "message": [
          //       "The message field is required."
          //   ],
          //   "phone": [
          //       "The phone field is required."
          //   ],
          //   "patient_name": [
          //       "The patient name field is required."
          //   ],
          //   "patient_bloodgroup": [
          //       "The patient bloodgroup field is required."
          //   ],
          //   "blood_qty": [
          //       "The blood qty field is required."
          //   ],
          //   "admitted_hospital": [
          //       "The admitted hospital field is required."
          //   ],
          //   "need_freshblood": [
          //       "The need freshblood field is required."
          //   ],
          //   "image": [
          //       "The image field is required."
          //   ]