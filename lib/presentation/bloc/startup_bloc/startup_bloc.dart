import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  final AppPreferences appPreferences;
  StartupBloc(this.appPreferences) : super(StartupLoading()) {
    on<StartupEvent>((event, emit) async {
      final onBoardingViewed = await appPreferences.getOnboardingState();
      if (
        onBoardingViewed) {
        final loggedIn = await appPreferences.getLoginState();
        if (loggedIn) {
          emit(LoggedInState());
        } else {
          emit(LoggedOutState());
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
  }
}
