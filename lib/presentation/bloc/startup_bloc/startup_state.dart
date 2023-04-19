part of 'startup_bloc.dart';

abstract class StartupState {}

class StartupLoading extends StartupState {}

class OnboardingState extends StartupState {}

class LoggedInState extends StartupState {
  final User user;
  LoggedInState({required this.user});
}

class LoggedOutState extends StartupState {}
