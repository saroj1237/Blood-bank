import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:blood_bank/presentation/screens/blood/blood_donate_screen.dart';
import 'package:blood_bank/presentation/screens/blood/blood_stock_screen.dart';
import 'package:blood_bank/presentation/screens/blood/request_blood.dart';
import 'package:blood_bank/presentation/screens/full_screen_loading.dart';
import 'package:blood_bank/presentation/screens/home/home_screen.dart';
import 'package:blood_bank/presentation/screens/login/login_screen.dart';
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

  GoRouter init() {
    return GoRouter(
      initialLocation: initialRoute(),
      // navigatorKey: _rootNavigatorKey,
      routes: [
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
            }),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: bloodRequestRoute,
            name: bloodRequestRoute,
            builder: (context, state) {
              return const BloodRequestScreen();
            }),
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
    } else if (startupBloc.state is LoggedInState) {
      return homeRoute;
    } else if (startupBloc.state is LoggedOutState) {
      return loginRoute;
    } else {
      return fullScreenLoadingRoute;
    }
  }
}
