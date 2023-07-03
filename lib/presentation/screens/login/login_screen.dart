import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/utils/dialogs/easy_loading_dialog.dart';
import 'package:blood_bank/presentation/bloc/aph_bloc/a_p_h_bloc.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:blood_bank/presentation/screens/login/donor_login_view.dart';
import 'package:blood_bank/presentation/screens/login/organization_login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<StartupBloc, StartupState>(
        listener: (context, state) {
          if (state is StartupLoading) {
            showEasyLoading();
          } else if (state is LoginSkippedState) {
            hideEasyLoading();
          }
        },
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: AppColor.secondaryColor,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(text: 'Donor'),
                      Tab(text: 'Organization'),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      TabBarView(
                        controller: _tabController,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenPadding, vertical: 0),
                            child: const DonorLoginView(),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenPadding, vertical: 0),
                            child: const OrganizationLoginView(),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            context
                                .read<StartupBloc>()
                                .add(SetLoginSkippedState());
                          },
                          child: const Text(
                            "SKIP",
                            // style: TextStyle(color: AppColor.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
