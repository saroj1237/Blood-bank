import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
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
  static const String signupRoute = '/signup';
  static const String homeRoute = '/';

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
            path: signupRoute,
            name: signupRoute,
            builder: (context, state) {
              return const SignUpScreen();
            }),
        GoRoute(
            // parentNavigatorKey: _rootNavigatorKey,
            path: homeRoute,
            name: homeRoute,
            builder: (context, state) {
              return const HomeScreen();
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
