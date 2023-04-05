// ignore_for_file: invalid_annotation_target

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
    required String remark,
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
  }) = _RequestBlood;
  factory RequestBloodReq.fromJson(Map<String, dynamic> json) =>
      _$RequestBloodReqFromJson(json);
}

// "requestedgcytes": false,
// "requestedpbsc": false,
// "requestedccp": false,