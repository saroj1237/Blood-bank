import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/utils/dialogs/confirm_dialog.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrgProfileView extends StatelessWidget {
  const OrgProfileView({
    super.key,
    required this.user,
  });
  final OrganizationUserModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .30,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 55.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/01/10/07/11/blood-1968458__340.png",
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SizedBox.shrink(),
                      ),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  backgroundColor: AppColor.white,
                  radius: 55,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2013/07/13/09/48/blood-156063__340.png"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                user.name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              Text(
                "User ID: ${user.username}",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: const [
                    Text(
                      '5',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Blood Donated (times)',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: const [
                    Text(
                      '2',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Blood Request (times) ',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text(
                      user.email,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ListTile(
                      leading: Icon(Icons.phone_outlined),
                      title: Text(
                        user.phone,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )),
                  const SizedBox(height: 15),
                  ListTile(
                    leading: Icon(Icons.location_on_outlined),
                    title: Text(
                      user.address,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ListTile(
                      leading: Icon(Icons.settings_outlined),
                      title: Text(
                        "Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )),
                  const SizedBox(height: 15),
                  ListTile(
                    leading: Icon(Icons.logout_rounded),
                    onTap: () {
                      showConfirmDialog(
                        context,
                        body: "Are you sure you want to logout?",
                        onConfirm: () {
                          context.read<StartupBloc>().add(SetLogoutState());
                        },
                      );
                    },
                    title: Text(
                      "Logout",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
