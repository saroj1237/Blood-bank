import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'aph_models.freezed.dart';
part 'aph_models.g.dart';

@freezed
class AmbulanceModel with _$AmbulanceModel {
  const factory AmbulanceModel({
    required int id,
    required String club_name,
    required String contact,
    required String address,
    required String created_at,
  }) = _AmbulanceModel;

  factory AmbulanceModel.fromJson(Map<String, dynamic> json) =>
      _$AmbulanceModelFromJson(json);
}

@freezed
class HospitalModel with _$HospitalModel {
  const factory HospitalModel({
    required int id,
    required String hospital_name,
    required String contact,
    required String address,
    required String created_at,
  }) = _HospitalModel;

  factory HospitalModel.fromJson(Map<String, dynamic> json) =>
      _$HospitalModelFromJson(json);
}

@freezed
class PharmacyModel with _$PharmacyModel {
  const factory PharmacyModel({
    required int id,
    required String pharmacy_name,
    required String contact,
    required String address,
    required String created_at,
  }) = _PharmacyModel;

  factory PharmacyModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyModelFromJson(json);
}
