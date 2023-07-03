import 'package:blood_bank/core/extensions/context_extensions.dart';
import 'package:blood_bank/core/helpers/pick_date_np.dart';
import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/services/form_validator.dart';
import 'package:blood_bank/core/utils/dialogs/easy_loading_dialog.dart';
import 'package:blood_bank/core/utils/dialogs/info_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;
import 'package:nepali_utils/nepali_utils.dart';

import 'package:blood_bank/presentation/bloc/blood_services_bloc/blood_services_bloc.dart';

class BloodDonateScreen extends StatefulWidget {
  const BloodDonateScreen({super.key});

  @override
  State<BloodDonateScreen> createState() => _BloodDonateScreenState();
}

class _BloodDonateScreenState extends State<BloodDonateScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _hospitalController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Donate Blood"),
      ),
      body: BlocListener<BloodServicesBloc, BloodServicesState>(
        listener: (context, state) {
          if (state.status == BloodServiceStatus.loading) {
            showEasyLoading();
          } else if (state.status == BloodServiceStatus.loaded) {
            hideEasyLoading();
            showInfoDialog(context,
                body:
                    "Your form for blood donation request is submitted successfully. We will inform you via phone number you provided. Thank you!");
          } else if (state.status == BloodServiceStatus.error) {
            hideEasyLoading();
            showInfoDialog(context,
                body:
                    "Error occurred while submitting the form. Please try again.");
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenPadding),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(AssetManager.donateBlood),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Please fill up the form for requesting blood donation. All the fields are required.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  _buildTextField(
                    controller: _nameController,
                    labelText: "Name",
                    hintText: "Enter your full name",
                  ),
                  const SizedBox(height: 16),
                  _buildTextField(
                    controller: _phoneController,
                    labelText: "Phone number",
                    keyBoardType: TextInputType.phone,
                    hintText: "Enter a valid phone number",
                  ),
                  const SizedBox(height: 16),
                  _buildTextField(
                    controller: _dobController,
                    labelText: "Date of birth",
                    readOnly: true,
                    suffixIcon: Icons.arrow_drop_down,
                    onTap: () async {
                      final pickedDate = await pickNepaliDate(context);
                      if (pickedDate != null) {
                        _dobController.text = pickedDate;
                      }
                    },
                    hintText: "Enter your data of birth",
                  ),
                  const SizedBox(height: 16),
                  _buildTextField(
                    controller: _hospitalController,
                    labelText: "Hospital",
                    hintText:
                        "Enter the hospital name you want to donate blood",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: buttonHeight,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColor.primaryColor)),
                      onPressed: () {
                        context.hideKeyboard();
                        if (!_formKey.currentState!.validate()) return;
                        context.read<BloodServicesBloc>().add(
                              DonateBlood(
                                name: _nameController.text,
                                phoneNumber: _phoneController.text,
                                dob: _dobController.text,
                                hospitalName: _hospitalController.text,
                              ),
                            );
                      },
                      child: Text(
                        'Submit',
                        style: const TextStyle().copyWith(color: Colors.white),
                      ),
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

  TextFormField _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
    bool readOnly = false,
    void Function()? onTap,
    TextInputType? keyBoardType,
    IconData? suffixIcon,
  }) {
    return TextFormField(
      controller: controller,
      validator: FormValidator.notEmpty,
      readOnly: readOnly,
      onTap: onTap,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        labelText: labelText,
        hintText: hintText,
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
    );
  }
}
