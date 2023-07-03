part of 'login_bloc.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String error;
  LoginFailure({required this.error});
}

class LoginSuccess extends LoginState {
  final LoginType loginType;
  LoginSuccess({required this.loginType});
}

enum LoginType {
  donor,
  organization,
}
