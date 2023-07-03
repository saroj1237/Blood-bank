part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required RegisterStatus status,
    String? errorMsg,
  }) = _RegisterState;
}

enum RegisterStatus { initial, loading, success, error }
