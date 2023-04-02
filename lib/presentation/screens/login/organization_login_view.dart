import 'package:blood_bank/core/services/form_validator.dart';
import 'package:blood_bank/core/utils/asset_manager.dart';
import 'package:blood_bank/core/utils/color_manager.dart';
import 'package:blood_bank/core/utils/dialogs.dart';
import 'package:blood_bank/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrganizationLoginView extends StatefulWidget {
  const OrganizationLoginView({super.key});

  @override
  State<OrganizationLoginView> createState() => _OrganizationLoginViewState();
}

class _OrganizationLoginViewState extends State<OrganizationLoginView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {},
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SvgPicture.asset(
                AssetManager.organizationLogin,
                height: 120,
                width: 120,
                color: AppColor.primaryColor,
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
                controller: _usernameController,
                validator: FormValidator.notEmpty,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Username',
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
                controller: _passwordController,
                validator: FormValidator.notEmpty,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Password',
                  hintText: 'xxxxx',
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.secondaryColor),
                  ),
                  errorBorder: const OutlineInputBorder(
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
                      context.read<LoginBloc>().add(OrganizationLoginEvent(
                          username: _usernameController.text,
                          password: _passwordController.text));
                    }
                  },
                  child: const Text(
                    'Log in',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'By logging in you accept our  ',
                  style:
                      DefaultTextStyle.of(context).style.copyWith(fontSize: 12),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Terms and Conditions',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.secondaryColor,
                          decoration: TextDecoration.underline,
                        )),
                  ],
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
