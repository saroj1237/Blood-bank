import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:blood_bank/presentation/screens/aph/aph_screen.dart';
import 'package:blood_bank/presentation/screens/blood_camp/blood_bank_screen.dart';
import 'package:blood_bank/presentation/screens/blood_camp/blood_camp_info_screen.dart';
import 'package:blood_bank/presentation/screens/blood_services/blood_donate_screen.dart';
import 'package:blood_bank/presentation/screens/blood_services/blood_stock_screen.dart';
import 'package:blood_bank/presentation/screens/blood_camp/book_camp_screen.dart';
import 'package:blood_bank/presentation/screens/blood_services/request_blood_screen.dart';
import 'package:blood_bank/presentation/screens/full_screen_loading.dart';
import 'package:blood_bank/presentation/screens/home/home_screen.dart';
import 'package:blood_bank/presentation/screens/login/login_screen.dart';
import 'package:blood_bank/presentation/screens/notification_screen.dart';
import 'package:blood_bank/presentation/screens/onboardings_screen.dart';
import 'package:blood_bank/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  final StartupBloc startupBloc;
  AppRoutes({required this.startupBloc});

  static const String fullScreenLoadingRoute = '/fullScreenLoadingRoute';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String signUpRoute = '/signUp';
  static const String homeRoute = '/';
  static const String bloodStockRoute = '/bloodStock';
  static const String bloodDonateRoute = '/bloodDonate';
  static const String bloodRequestRoute = '/bloodRequest';
  static const String bookCampRoute = '/bookCamp';
  static const String bloodCampRoute = '/bloodCamp';
  static const String bloodBankRoute = '/bloodBank';
  static const String aphRoute = '/aph/:tabIndex/:title';
  static const String notificationRoute = '/notification';

  GoRouter init() {
    return GoRouter(
      initialLocation: initialRoute(),
      // initialLocation: bloodRequestRoute,
      // navigatorKey: _rootNavigatorKey,
      routes: [
        // ShellRoute(

        //   pageBuilder: (context, state, child) {
        //     return MaterialPage(
        //         child: Scaffold(
        //       appBar: AppBar(),
        //     ));
        //   },
        // ),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: fullScreenLoadingRoute,
            name: fullScreenLoadingRoute,
            builder: (context, state) {
              return const FullScreenLoading();
            }),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: onBoardingRoute,
            name: onBoardingRoute,
            builder: (context, state) {
              return const OnBoardingScreen();
            }),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: loginRoute,
            name: loginRoute,
            builder: (context, state) {
              return const LoginScreen();
            }),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: signUpRoute,
          name: signUpRoute,
          builder: (context, state) {
            return const SignUpScreen();
          },
        ),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: homeRoute,
            name: homeRoute,
            builder: (context, state) {
              return const HomeScreen();
            }),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: bloodStockRoute,
            name: bloodStockRoute,
            builder: (context, state) {
              return const BloodStockScreen();
            }),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: bloodDonateRoute,
          name: bloodDonateRoute,
          builder: (context, state) {
            return const BloodDonateScreen();
          },
          // redirect: (context, state) {
          //   if (startupBloc.state is! LoggedInState) {
          //     print("Not loggedin");
          //     return loginRoute;
          //   } else {
          //     print("logged in");
          //     return null;
          //   }
          // },
        ),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: bloodRequestRoute,
          name: bloodRequestRoute,
          builder: (context, state) {
            return const BloodRequestScreen();
          },
          // redirect: (BuildContext context, GoRouterState state) {
          //   if (startupBloc.state is! LoggedInState) {
          //     print("Not loggedin");
          //     return loginRoute;
          //   } else {
          //     print("logged in");
          //     return null;
          //   }
          // },
        ),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: bookCampRoute,
          name: bookCampRoute,
          builder: (context, state) {
            return const BookCampScreen();
          },

          redirect: (BuildContext context, GoRouterState state) {
            if (startupBloc.state is! LoggedInState) {
              print("Not loggedin");
              return loginRoute;
            } else {
              print("logged in");
              return null;
            }
          },
        ),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: bloodCampRoute,
            name: bloodCampRoute,
            builder: (context, state) {
              return const BloodCampInfoScreen();
            }),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: bloodBankRoute,
            name: bloodBankRoute,
            builder: (context, state) {
              return const BloodBankScreen();
            }),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: aphRoute,
          name: aphRoute,
          builder: (context, state) {
            return APHScreen(
              tabIndex: int.parse(
                state.params["tabIndex"] ?? "0",
              ),
              title: state.params['title'] ?? "APH",
            );
          },
        ),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: notificationRoute,
          name: notificationRoute,
          builder: (context, state) {
            return const NotificationScreen();
          },
        ),
      ],

      errorBuilder: (context, state) {
        return Scaffold(
          body: Center(
            child: Text("${state.location} route not found."),
          ),
        );
      },
    );
  }

  String initialRoute() {
    if (startupBloc.state is OnboardingState) {
      return onBoardingRoute;
    } else if (startupBloc.state is LoggedInState ||
        startupBloc.state is LoginSkippedState) {
      return homeRoute;
    } else if (startupBloc.state is LoggedOutState) {
      return loginRoute;
    } else {
      return fullScreenLoadingRoute;
    }
  }
}
