part of 'a_p_h_bloc.dart';

@freezed
class APHState with _$APHState {
  const factory APHState({
    required APHStatus status,
    String? errorMsg,
    @Default([]) List<AmbulanceModel> ambulances,
    @Default([]) List<HospitalModel> hospitals,
    @Default([]) List<PharmacyModel> pharmacies,
  }) = _APHState;
}

enum APHStatus {
  initial,
  loading,
  error,
  success,
}
