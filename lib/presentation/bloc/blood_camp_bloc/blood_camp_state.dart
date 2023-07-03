part of 'blood_camp_bloc.dart';

@freezed
class BloodCampState with _$BloodCampState {
  const factory BloodCampState({
    required BloodCampStatus status,
    @Default([]) List<BloodCampHistoryModel> campHistory,
    @Default([]) List<BloodCampHistoryModel> upComingCamps,
    @Default([]) List<BloodBankModel> bloodBanks,
    String? errorMsg,
  }) = _BloodCampState;
}

enum BloodCampStatus {
  initial,
  loading,
  loaded,
  failure,
}
