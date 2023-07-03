import 'package:blood_bank/core/extensions/context_extensions.dart';
import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/routes/go_router.dart';
import 'package:blood_bank/core/services/form_validator.dart';
import 'package:blood_bank/core/utils/dialogs/easy_loading_dialog.dart';
import 'package:blood_bank/core/utils/dialogs/snackbars.dart';
import 'package:blood_bank/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

class DonorLoginView extends StatefulWidget {
  const DonorLoginView({super.key});

  @override
  State<DonorLoginView> createState() => _DonorLoginViewState();
}

class _DonorLoginViewState extends State<DonorLoginView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _donorIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginLoading) {
              showEasyLoading();
            } else if (state is LoginSuccess) {
              hideEasyLoading();
              context.read<StartupBloc>().add(StartupEvent());
            } else if (state is LoginFailure) {
              hideEasyLoading();
              showSnackBar(context, message: "Login failed.");
            }
          },
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Image.asset(
                "assets/images/login_header.jpg",
                height: 120,
                width: 120,
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Welcome to',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'T.U. Lions Blood Bank',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                controller: _mobileNumberController,
                validator: FormValidator.phoneNumberValidator,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.secondaryColor),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primaryColor),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _donorIdController,
                validator: FormValidator.notEmpty,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColor.secondaryColor),
                  ),
                  errorBorder: const OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColor.primaryColor,
                    ),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColor.primaryColor,
                    ),
                  ),
                  labelText: 'Donor Card Id',
                  hintText: 'XXXXX',
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.hideKeyboard();
                      context.read<LoginBloc>().add(
                            DonorLoginEvent(
                                phoneNumber: _mobileNumberController.text,
                                donorCardId: _donorIdController.text),
                          );
                    }
                  },
                  child: const Text('LOG IN'),
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'By logging in you accept our ',
                  style:
                      DefaultTextStyle.of(context).style.copyWith(fontSize: 12),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Terms and Conditions.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.push(AppRoutes.signUpRoute);
                },
                child: const Text(
                  'Create account?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blue,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.4)
            ],
          ),
        ),
      ),
    );
  }
}
