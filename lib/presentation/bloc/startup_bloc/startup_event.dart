part of 'startup_bloc.dart';

class StartupEvent {}

class GetStartedOnboarding extends StartupEvent {}

class SetLogoutState extends StartupEvent {}

class SetLoginSkippedState extends StartupEvent {}

class SetStartupStateLoginForce extends StartupEvent {}
