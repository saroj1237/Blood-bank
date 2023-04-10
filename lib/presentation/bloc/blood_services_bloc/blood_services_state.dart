part of 'blood_services_bloc.dart';

@freezed
class BloodServicesState with _$BloodServicesState {
  const factory BloodServicesState({
    @Default(BloodServiceStatus.initial) BloodServiceStatus status,
    @Default({}) Map<String, dynamic> bloodStock,
  }) = _BloodServicesState;
}

enum BloodServiceStatus {
  initial,
  loading,
  loaded,
  error,
}
