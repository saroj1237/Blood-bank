import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  final AppPreferences appPreferences;
  StartupBloc(this.appPreferences) : super(StartupLoading()) {
    on<StartupEvent>((event, emit) async {
      final onBoardingViewed = await appPreferences.getOnboardingState();
      if (onBoardingViewed) {
        final loggedInUserType = await appPreferences.getLoginType();
        if (loggedInUserType == null) {
          emit(LoggedOutState());
        } else if (loggedInUserType == donorLoginType) {
          final donorUser = await appPreferences.getLoginStateDonor();
          emit(LoggedInState(
            loggedInUserType: donorLoginType,
            user: donorUser,
          ));
        } else if (loggedInUserType == orgLoginType) {
          final orgUser = await appPreferences.getLoginStateOrg();
          emit(LoggedInState(
            loggedInUserType: orgLoginType,
            orgUser: orgUser,
          ));
        }
      } else {
        emit(OnboardingState());
      }
    });

    on<GetStartedOnboarding>(
      (event, emit) async {
        await appPreferences.setOnboardingState();
        emit(LoggedOutState());
      },
    );

    on<SetLogoutState>(
      (event, emit) async {
        final success = await appPreferences.removerLoginState();
        if (success) {
          emit(LoggedOutState());
        }
      },
    );

    // on<SetStartupStateLoginForce>(
    //   (event, emit) async {
    //     emit(LoggedInState());
    //   },
    // );

    on<SetLoginSkippedState>(
      (event, emit) async {
        emit(StartupLoading());
        await Future.delayed(const Duration(milliseconds: 400));
        emit(LoginSkippedState());
      },
    );
  }
}
