import 'package:blood_bank/domain/repositories/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;
  LoginBloc({required this.authRepository}) : super(LoginInitial()) {
    on<DonorLoginEvent>(_onDonorLogin);
    on<OrganizationLoginEvent>(_onOrganizationLogin);
  }

  void _onDonorLogin(DonorLoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      final user =
          await authRepository.donorLogin(event.phoneNumber, event.donorCardId);

      emit(LoginSuccess(loginType: LoginType.donor));
    } catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }

  void _onOrganizationLogin(
    OrganizationLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(LoginLoading());
      final data = await authRepository.organizationLogin(
          event.username, event.password);
      debugPrint(data.toString());
      emit(LoginSuccess(loginType: LoginType.organization));
    } catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }
}
