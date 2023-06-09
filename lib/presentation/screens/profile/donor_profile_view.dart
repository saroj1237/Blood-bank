import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/utils/dialogs/confirm_dialog.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonorProfileView extends StatelessWidget {
  const DonorProfileView({
    super.key,
    required this.user,
  });
  final User user;

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
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0M45Aw5HSFviaHBXPzRVJlZXKr4_jcSpV1A&usqp=CAU",
                      ),
                      // image: AssetImage('assets/images/donor_cover.png'),
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
                  radius: 55,
                  backgroundImage: NetworkImage(
                      // AssetManger.profileImage,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuT_wu3cGS8vFdoOo0sgabhd1qJGWRpWjOlg&usqp=CAU"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              Text(
                "Donor Id: ${user.donorCardId}",
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
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 16.0),
              //   child: Column(
              //     children: const [
              //       Text(
              //         '20hrs',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w500, fontSize: 18),
              //       ),
              //       SizedBox(height: 5),
              //       Text(
              //         'This week',
              //         style: TextStyle(
              //             fontWeight: FontWeight.w500, fontSize: 12),
              //       ),
              //     ],
              //   ),
              // ),
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
                  Row(
                    children: [
                      const Icon(Icons.email_outlined),
                      const SizedBox(width: 10),
                      Text(
                        user.email,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.male_rounded),
                      const SizedBox(width: 10),
                      Text(
                        user.sex,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.phone_outlined),
                      const SizedBox(width: 10),
                      Text(
                        user.mobile,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      const SizedBox(width: 10),
                      Text(
                        user.address,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: const [
                      Icon(Icons.settings_outlined),
                      SizedBox(width: 10),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(
                      double.infinity,
                      buttonHeight,
                    )),
                    onPressed: () {
                      showConfirmDialog(
                        context,
                        body: "Are you sure you want to logout?",
                        onConfirm: () {
                          context.read<StartupBloc>().add(SetLogoutState());
                        },
                      );
                    },
                    child: const Text("Logout"),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
