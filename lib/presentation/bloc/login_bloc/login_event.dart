part of 'login_bloc.dart';

abstract class LoginEvent {}

class DonorLoginEvent extends LoginEvent {
  final String phoneNumber;
  final String donorCardId;
  DonorLoginEvent({required this.phoneNumber, required this.donorCardId});
}

class OrganizationLoginEvent extends LoginEvent {
  final String username;
  final String password;
  OrganizationLoginEvent({
    required this.username,
    required this.password,
  });
}
