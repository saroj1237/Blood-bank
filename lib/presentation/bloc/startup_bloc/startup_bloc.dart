import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:blood_bank/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  final AppPreferences appPreferences;
  StartupBloc(this.appPreferences) : super(StartupLoading()) {
    on<StartupEvent>((event, emit) async {
      final onBoardingViewed = await appPreferences.getOnboardingState();
      if (onBoardingViewed) {
        final loggedInUser = await appPreferences.getLoginState();
        if (loggedInUser != null) {
          emit(LoggedInState(user: loggedInUser));
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
  }
}
