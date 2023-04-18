import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/routes/go_router.dart';
import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/data/aph_remote_datasource.dart';
import 'package:blood_bank/data/auth_remote_datasource.dart';
import 'package:blood_bank/data/blood_camp_remote_datasource.dart';
import 'package:blood_bank/data/blood_service_remote_datasource.dart';
import 'package:blood_bank/domain/repositories/aph_repository.dart';
import 'package:blood_bank/domain/repositories/auth_repository.dart';
import 'package:blood_bank/domain/repositories/blood_camp_repository.dart';
import 'package:blood_bank/domain/repositories/blood_services_repository.dart';
import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:blood_bank/presentation/bloc/blood_camp_bloc/blood_camp_bloc.dart';
import 'package:blood_bank/presentation/bloc/blood_services_bloc/blood_services_bloc.dart';
import 'package:blood_bank/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    return MultiBlocProvider(
      providers: [
        BlocProvider<StartupBloc>(
          create: (context) =>
              StartupBloc(AppPreferences())..add(StartupEvent()),
          lazy: false,
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(
            authRepository: AuthRepository(
              authRemoteDataSource: AuthRemoteDataSource(dio: dio),
              appPreferences: AppPreferences(),
            ),
          ),
        ),
        BlocProvider<BloodServicesBloc>(
          create: (context) => BloodServicesBloc(
              bloodServicesRepository: BloodServicesRepository(
            remoteDataSource: BloodServiceRemoteDataSource(dio: dio),
          )),
        ),
        BlocProvider<BloodCampBloc>(
          create: (context) => BloodCampBloc(
            repository: BloodCampRepository(
                remoteDataSource: BloodCampRemoteDataSource(dio: dio)),
          ),
        ),
        BlocProvider<APHBloc>(
          create: (context) => APHBloc(
            repository:
                APHRepository(remoteDataSource: APHRemoteDataSource(dio: dio)),
          ),
        )
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
