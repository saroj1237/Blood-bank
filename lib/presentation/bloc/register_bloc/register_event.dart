part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.donorRegister({
    required DonorRegisterRequest request,
  }) = DonorRegister;
}
