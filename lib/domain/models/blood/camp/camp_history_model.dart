import 'package:freezed_annotation/freezed_annotation.dart';
part 'camp_history_model.freezed.dart';
part 'camp_history_model.g.dart';

@freezed
class BloodCampHistoryModel with _$BloodCampHistoryModel {
  const factory BloodCampHistoryModel({
    required int campid,
    required String ndate,
    required String nepalidate,
    required String camporganizer,
    required String camplocation,
  }) = _BloodCampHistoryModel;
  factory BloodCampHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$BloodCampHistoryModelFromJson(json);
}

@freezed
class BloodBankModel with _$BloodBankModel {
  const factory BloodBankModel({
    required int id,
    required String blood_bank_name,
    required String contact,
    required String address,
    required String created_at,
  }) = _BloodBankModel;
  factory BloodBankModel.fromJson(Map<String, dynamic> json) =>
      _$BloodBankModelFromJson(json);
}
