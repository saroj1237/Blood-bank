part of 'startup_bloc.dart';

abstract class StartupState {}

class StartupLoading extends StartupState {}

class OnboardingState extends StartupState {}

class LoggedInState extends StartupState {
  final String loggedInUserType;
  final User? user;
  final OrganizationUserModel ?orgUser;
  LoggedInState({
    required this.loggedInUserType,
     this.user,
    this.orgUser,
  });
}

class LoggedOutState extends StartupState {}

class LoginSkippedState extends StartupState {}
