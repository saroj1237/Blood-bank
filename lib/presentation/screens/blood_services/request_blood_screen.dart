import 'dart:io';

import 'package:blood_bank/core/extensions/context_extensions.dart';
import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/core/services/form_validator.dart';
import 'package:blood_bank/core/services/image_picker.dart';
import 'package:blood_bank/core/utils/dialogs/easy_loading_dialog.dart';
import 'package:blood_bank/core/utils/dialogs/info_dialog.dart';
import 'package:blood_bank/core/utils/dialogs/option_dialogs.dart';
import 'package:blood_bank/core/utils/dialogs/snackbars.dart';
import 'package:blood_bank/core/utils/dialogs/loading_dialog.dart';
import 'package:blood_bank/domain/models/blood/blood_stock.dart';
import 'package:blood_bank/presentation/bloc/blood_services_bloc/blood_services_bloc.dart';
import 'package:blood_bank/presentation/bloc/startup_bloc/startup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class BloodRequestScreen extends StatefulWidget {
  const BloodRequestScreen({super.key});

  @override
  State<BloodRequestScreen> createState() => _BloodRequestScreenState();
}

class _BloodRequestScreenState extends State<BloodRequestScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _patientNameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _hospitalNameController = TextEditingController();
  final TextEditingController _remarkController = TextEditingController();
  final TextEditingController _bloodQtyController = TextEditingController();

  File? file;
  bool freshBlood = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request Blood"),
        elevation: 0,
      ),
      body: BlocConsumer<BloodServicesBloc, BloodServicesState>(
        listener: (context, state) {
          if (state.status == BloodServiceStatus.loading) {
            showEasyLoading();
          } else if (state.status == BloodServiceStatus.loaded) {
            hideEasyLoading();
            showInfoDialog(context,
                dialogType: DialogType.success,
                body:
                    "Blood request form is submitted successfully. We will contact you shortly.");
          } else if (state.status == BloodServiceStatus.error) {
            hideEasyLoading();
            showInfoDialog(context,
                dialogType: DialogType.failure,
                body:
                    "Error occurred submitting your form. Please try again later.");
          }
        },
        builder: (context, state) {
          return BlocBuilder<StartupBloc, StartupState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(AssetManager.requestBlood),
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Please fill up the form for requesting blood. All the fields are required.',
                          textAlign: TextAlign.left,
                        ),
                        Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 16),
                                  Text(
                                    "Patient Information",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  TextFormField(
                                    controller: _patientNameController,
                                    validator: FormValidator.notEmpty,
                                    decoration: InputDecoration(
                                      labelText: "Patient Name",
                                      hintText: "Enter patient full name",
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _bloodGroupController,
                                          validator: FormValidator.notEmpty,
                                          readOnly: true,
                                          onTap: () async {
                                            final bloodGroup =
                                                await showBloodGroupDialog(
                                                    context);
                                            if (bloodGroup != null) {
                                              _bloodGroupController.text =
                                                  bloodGroup['name'];
                                            }
                                          },
                                          decoration: InputDecoration(
                                            labelText: "Blood Group",
                                            hintText:
                                                "Select required blood group",
                                            isDense: true,
                                            suffixIcon: const Icon(
                                                Icons.arrow_drop_down),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 16),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey.shade100),
                                            ),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      AppColor.secondaryColor),
                                            ),
                                            errorBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColor.primaryColor),
                                            ),
                                            focusedErrorBorder:
                                                const OutlineInputBorder(
                                              // borderRadius: BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: AppColor.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _ageController,
                                          validator: FormValidator.notEmpty,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                            LengthLimitingTextInputFormatter(2),
                                          ],
                                          decoration: InputDecoration(
                                            labelText: "Age(Years)",
                                            hintText: "Patient's Age",
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 16),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey.shade100),
                                            ),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      AppColor.secondaryColor),
                                            ),
                                            errorBorder:
                                                const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColor.primaryColor),
                                            ),
                                            focusedErrorBorder:
                                                const OutlineInputBorder(
                                              // borderRadius: BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: AppColor.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: _genderController,
                                    validator: FormValidator.notEmpty,
                                    readOnly: true,
                                    onTap: () async {
                                      final gender =
                                          await showGenderDialog(context);
                                      if (gender != null) {
                                        _genderController.text = gender;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      labelText: "Gender",
                                      hintText: "Gender",
                                      suffixIcon:
                                          const Icon(Icons.arrow_drop_down),
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    "Contact",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  TextFormField(
                                    controller: _nameController,
                                    validator: FormValidator.notEmpty,
                                    decoration: InputDecoration(
                                      labelText: "Name",
                                      hintText: "Enter your name",
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: _emailController,
                                    validator: FormValidator.emailValidator,
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      hintText: "Enter email address",
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: _phoneController,
                                    validator:
                                        FormValidator.phoneNumberValidator,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      labelText: "Phone Number",
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    "Other Information",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  TextFormField(
                                    controller: _hospitalNameController,
                                    validator: FormValidator.notEmpty,
                                    decoration: InputDecoration(
                                      labelText: "Hospital Name",
                                      hintText: "Enter Hospital Name",
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CheckboxListTile(
                                    value: freshBlood,
                                    onChanged: (val) {
                                      setState(() {
                                        freshBlood = val!;
                                      });
                                    },
                                    contentPadding: EdgeInsets.zero,
                                    isThreeLine: true,
                                    title: const Text("Need fresh blood?"),
                                    subtitle: const Text(
                                        "Check if the patient need fresh blood."),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  TextFormField(
                                    controller: _bloodQtyController,
                                    validator: FormValidator.notEmpty,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(2),
                                    ],
                                    decoration: InputDecoration(
                                      labelText: "Required Blood Amount (Pint)",
                                      hintText:
                                          "Enter Required Blood Amount(Pint)",
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: _remarkController,
                                    validator: FormValidator.notEmpty,
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      labelText: "Remarks",
                                      hintText: "Remarks",
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 16),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.secondaryColor),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor),
                                      ),
                                      focusedErrorBorder:
                                          const OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  GestureDetector(
                                    onTap: () {
                                      // pickDateAndTime(context);
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                ListTile(
                                                  leading: const Icon(
                                                      Icons.camera_alt),
                                                  title: const Text(
                                                    'Click from Camera',
                                                    style: TextStyle(),
                                                  ),
                                                  onTap: () async {
                                                    Navigator.of(context).pop();
                                                    final pickedFile =
                                                        await pickImage(
                                                            ImageSource.camera);
                                                    if (pickedFile != null) {
                                                      setState(() {
                                                        file = pickedFile;
                                                      });
                                                    }
                                                  },
                                                ),
                                                ListTile(
                                                  leading:
                                                      const Icon(Icons.photo),
                                                  title: const Text(
                                                    'Select from Gallery',
                                                    style: TextStyle(),
                                                  ),
                                                  onTap: () async {
                                                    Navigator.of(context).pop();
                                                    final pickedFile =
                                                        await pickImage(
                                                            ImageSource
                                                                .gallery);
                                                    if (pickedFile != null) {
                                                      setState(() {
                                                        file = pickedFile;
                                                      });
                                                    }
                                                  },
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Doctor\'s Prescription',
                                          style: TextStyle(),
                                        ),
                                        file == null
                                            ? Image.asset(
                                                AssetManager.example,
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.contain,
                                              )
                                            : Image.file(
                                                file!,
                                                height: 50,
                                                width: 100,
                                                fit: BoxFit.fitWidth,
                                              ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColor.primaryColor)),
                                onPressed: () {
                                  context.hideKeyboard();
                                  if (!_formKey.currentState!.validate()) {
                                    return;
                                  }
                                  if (file == null) {
                                    showSnackBar(
                                      context,
                                      message:
                                          "Select image file of doctor's prescription",
                                    );
                                    return;
                                  }
                                  if (_formKey.currentState!.validate()) {
                                    context.read<BloodServicesBloc>().add(
                                          RequestBlood(
                                            request: BloodRequest(
                                                patientBloodGroup:
                                                    _bloodGroupController.text,
                                                patientName:
                                                    _nameController.text,
                                                bloodQuantity:
                                                    _bloodQtyController.text,
                                                receptorName:
                                                    _nameController.text,
                                                hospitalName:
                                                    _hospitalNameController
                                                        .text,
                                                phone: _phoneController.text,
                                                email: _emailController.text,
                                                needFreshBlood: freshBlood,
                                                message: _remarkController.text,
                                                subject: _remarkController.text,
                                                imagePath: file?.path ?? ''),
                                          ),
                                        );
                                  }
                                },
                                child: Text(
                                  'Submit',
                                  style: const TextStyle()
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
