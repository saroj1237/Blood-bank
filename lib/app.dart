import 'package:blood_bank/core/routes/go_router.dart';
import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/core/utils/theme.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StartupBloc>(
          create: (context) =>
              StartupBloc(AppPreferences())..add(StartupEvent()),
          lazy: false,
        ),
      ],
      child: BlocBuilder<StartupBloc, StartupState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Blood Bank',
            theme: lightTheme,
            routerDelegate: AppRoutes(startupBloc: context.read<StartupBloc>())
                .init()
                .routerDelegate,
            routeInformationParser:
                AppRoutes(startupBloc: context.read<StartupBloc>())
                    .init()
                    .routeInformationParser,
            routeInformationProvider:
                AppRoutes(startupBloc: context.read<StartupBloc>())
                    .init()
                    .routeInformationProvider,
          );
        },
      ),
    );
  }
}