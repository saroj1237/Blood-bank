import 'package:blood_bank/core/extensions/context_extensions.dart';
import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/routes/go_router.dart';
import 'package:blood_bank/core/services/form_validator.dart';
import 'package:blood_bank/core/utils/dialogs/confirm_dialog.dart';
import 'package:blood_bank/core/utils/dialogs/easy_loading_dialog.dart';
import 'package:blood_bank/core/utils/dialogs/info_dialog.dart';
import 'package:blood_bank/core/utils/dialogs/option_dialogs.dart';
import 'package:blood_bank/core/utils/dialogs/snackbars.dart';
import 'package:blood_bank/domain/models/auth/register_model.dart';
import 'package:blood_bank/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:blood_bank/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bloodController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  int bloodGroupID = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create an account"),
        elevation: 0,
      ),
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state.status == RegisterStatus.loading) {
            showEasyLoading();
          } else if (state.status == RegisterStatus.error) {
            hideEasyLoading();
            showInfoDialog(context,
                body: state.errorMsg ??
                    "Error occurred while registering. Please try again");
          } else if (state.status == RegisterStatus.success) {
            hideEasyLoading();

            showSnackBar(
              context,
              bgColor: AppColor.green,
              message:
                  "Your information is submitted successfully. Admin will create your donor ID. Keep checking your email or phone number.",
            );
            context.pop();
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SvgPicture.asset(AssetManager.donorLogin,
                      height: 120, width: 120),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
                  const SizedBox(height: 10),
                  const Text(
                      'Create an account to request blood, register your blood donation, and other features.'),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text(
                        'I already have an account.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blue,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _nameController,
                    validator: (val) =>
                        FormValidator.notEmpty(val, data: "Full Name"),
                    decoration: InputDecoration(
                      hintText: "Full name",
                      isDense: true,
                      prefixIcon: const Icon(Icons.person_outline),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 16),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.secondaryColor),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.secondaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _phoneController,
                    validator: FormValidator.phoneNumberValidator,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: InputDecoration(
                      counterText: '',
                      hintText: "Phone number",
                      isDense: true,
                      prefixIcon: const Icon(Icons.phone_android_outlined),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 16),
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
                          color: AppColor.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _emailController,
                    validator: (val) =>
                        FormValidator.notEmpty(val, data: "Email"),
                    decoration: InputDecoration(
                      hintText: "Email",
                      isDense: true,
                      prefixIcon: const Icon(Icons.email_outlined),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 16),
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
                          color: AppColor.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _bloodController,
                    validator: (val) =>
                        FormValidator.notEmpty(val, data: "Blood group"),
                    readOnly: true,
                    onTap: () async {
                      final selectedBloodGroup =
                          await showBloodGroupDialog(context);
                      if (selectedBloodGroup != null) {
                        _bloodController.text = selectedBloodGroup['name'];
                        bloodGroupID = selectedBloodGroup['id'];
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Blood group",
                      isDense: true,
                      prefixIcon: const Icon(Icons.bloodtype_outlined),
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 16),
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
                          color: AppColor.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _ageController,
                          validator: (val) =>
                              FormValidator.notEmpty(val, data: "Age"),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(2),
                          ],
                          decoration: InputDecoration(
                            hintText: "Age",
                            isDense: true,
                            prefixIcon:
                                const Icon(Icons.confirmation_num_outlined),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 16),
                            enabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: AppColor.secondaryColor),
                            ),
                            errorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColor.secondaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _genderController,
                          validator: (val) =>
                              FormValidator.notEmpty(val, data: "Gender"),
                          readOnly: true,
                          onTap: () async {
                            final gender = await showGenderDialog(context);
                            if (gender != null) {
                              _genderController.text = gender;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Gender",
                            isDense: true,
                            suffixIcon:
                                const Icon(Icons.arrow_drop_down_outlined),
                            prefixIcon: const Icon(Icons.transgender_outlined),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 16),
                            enabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: AppColor.secondaryColor),
                            ),
                            errorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColor.secondaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _addressController,
                    validator: (val) =>
                        FormValidator.notEmpty(val, data: "Address"),
                    decoration: InputDecoration(
                      hintText: "Address",
                      prefixIcon: const Icon(Icons.location_on_outlined),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 16),
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
                          color: AppColor.secondaryColor,
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
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        context.hideKeyboard();
                        showConfirmDialog(context,
                            body:
                                "Your donor card ID will be generated and sent to the given email or phone number. Please make sure you entered correct email and phone number.\nEmail: ${_emailController.text}\nPhone: ${_phoneController.text}\nConfirm to proceed.",
                            onConfirm: () {
                          Navigator.of(context).pop();
                          context.read<RegisterBloc>().add(DonorRegister(
                                request: DonorRegisterRequest(
                                  name: _nameController.text,
                                  phone: _phoneController.text,
                                  email: _emailController.text,
                                  bloodGroup: bloodGroupID.toString(),
                                  gender: _genderController.text,
                                  age: int.parse(_ageController.text),
                                  address: _addressController.text,
                                  lastDonatedDate: 'UNKNOWN',
                                ),
                              ));
                        });
                      },
                      child: const Text('Register'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
