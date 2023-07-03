import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/routes/go_router.dart';
import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/core/utils/dialogs/confirm_dialog.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:blood_bank/presentation/screens/login/login_screen.dart';
import 'package:blood_bank/presentation/screens/profile/donor_profile_view.dart';
import 'package:blood_bank/presentation/screens/profile/org_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartupBloc, StartupState>(
      builder: (context, state) {
        if (state is LoggedInState) {
          return state.loggedInUserType == donorLoginType
              ? DonorProfileView(
                  user: state.user!,
                )
              : OrgProfileView(user: state.orgUser!);
        } else {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      "Sorry! you haven't logged in. Please click to LOG IN button to login"),
                  SizedBox(height: screenPadding),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 0),
                      onPressed: () {
                        context.push(AppRoutes.loginRoute);
                      },
                      child: const Text("LOG IN"),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
