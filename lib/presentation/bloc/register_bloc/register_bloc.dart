import 'package:blood_bank/data/auth_remote_datasource.dart';
import 'package:blood_bank/domain/models/auth/register_model.dart';
import 'package:blood_bank/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository authRepository;
  RegisterBloc({
    required this.authRepository,
  }) : super(const RegisterState(status: RegisterStatus.initial)) {
    on<DonorRegister>((event, emit) async {
      emit(state.copyWith(status: RegisterStatus.loading));
      await Future.delayed(const Duration(seconds: 1));
      final failureOrSuccess =
          await authRepository.donorRegister(event.request);
      failureOrSuccess.fold((error) {
        emit(state.copyWith(
          status: RegisterStatus.error,
          errorMsg: error,
        ));
      }, (r) {
        emit(state.copyWith(status: RegisterStatus.success));
      });
    });
  }
}
