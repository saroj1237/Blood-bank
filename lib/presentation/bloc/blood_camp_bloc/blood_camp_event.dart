part of 'blood_camp_bloc.dart';

@freezed
class BloodCampEvent with _$BloodCampEvent {
  const factory BloodCampEvent.bookCamp({
    required BookCampRequest request,
  }) = BookCamp;
  const factory BloodCampEvent.getBloodCampHistory() = GetBloodCampHistory;
  const factory BloodCampEvent.getBloodBanks() = GetBloodBanks;
}
