part of 'blood_camp_bloc.dart';

@freezed
class BloodCampState with _$BloodCampState {
  const factory BloodCampState({
    required BloodCampStatus status,
    String? errorMsg,
  }) = Initial;
}

enum BloodCampStatus {
  initial,
  loading,
  loaded,
  failure,
}
