part of 'blood_services_bloc.dart';

@freezed
class BloodServicesEvent with _$BloodServicesEvent {
  const factory BloodServicesEvent.started() = Started;
  const factory BloodServicesEvent.getBloodStock() = GetBloodStock;
  const factory BloodServicesEvent.requestBlood(
      {required RequestBloodReq request, required File file}) = RequestBlood;

  const factory BloodServicesEvent.donateBlood({
    required String name,
    required String phoneNumber,
    required String dob,
    required String hospitalName,
  }) = DonateBlood;
}
