part of 'a_p_h_bloc.dart';

@freezed
class APHEvent with _$APHEvent {
  const factory APHEvent.started() = _Started;
  const factory APHEvent.getAmbulances() = GetAmbulances;
  const factory APHEvent.getPharmacies() = GetPharmacies;
  const factory APHEvent.getHospitals() = GetHospitals;
}
