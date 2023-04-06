import 'dart:io';

import 'package:blood_bank/core/extensions/context_extensions.dart';
import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/services/form_validator.dart';
import 'package:blood_bank/core/services/image_picker.dart';
import 'package:blood_bank/core/utils/dialogs/option_dialogs.dart';
import 'package:blood_bank/core/utils/dialogs/snackbars.dart';
import 'package:blood_bank/core/utils/dialogs/loading_dialog.dart';
import 'package:blood_bank/presentation/bloc/bloc/blood_services_bloc.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _hospitalNameController = TextEditingController();
  final TextEditingController _remarkController = TextEditingController();

  File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request Blood"),
        elevation: 0,
      ),
      body: BlocListener<BloodServicesBloc, BloodServicesState>(
        listener: (context, state) {
          if (state.status == BloodServiceStatus.loading) {
            showLoadingDialog(context);
          }
          if (state.status == BloodServiceStatus.loaded) {
            hideLoadingDialog(context);
            showSnackBar(context,
                message:
                    "Request blood is submitted successfully. We will contact you shortly. ");
          }
        },
        child: SingleChildScrollView(
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
                    // padding: const EdgeInsets.only(top: 100),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(AssetManager.example),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Please fill up the form for requesting blood.',
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _nameController,
                              validator: FormValidator.notEmpty,
                              decoration: InputDecoration(
                                labelText: "Patient Name",
                                hintText: "Enter patient full name",
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 16),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.secondaryColor),
                                ),
                                errorBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primaryColor),
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
                              controller: _bloodGroupController,
                              validator: FormValidator.notEmpty,
                              readOnly: true,
                              onTap: () async {
                                final bloodGroup =
                                    await showBloodGroupDialog(context);
                                if (bloodGroup != null) {
                                  _bloodGroupController.text = bloodGroup;
                                }
                              },
                              decoration: InputDecoration(
                                labelText: "Blood Group",
                                hintText: "Select required blood group",
                                isDense: true,
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 16),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.secondaryColor),
                                ),
                                errorBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primaryColor),
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
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _ageController,
                                    validator: FormValidator.notEmpty,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      labelText: "Age(Years)",
                                      hintText: "Patient's Age",
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
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: TextFormField(
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
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _phoneController,
                              validator: FormValidator.notEmpty,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelText: "Phone Number",
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 16),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.secondaryColor),
                                ),
                                errorBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primaryColor),
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
                              controller: _hospitalNameController,
                              validator: FormValidator.notEmpty,
                              decoration: InputDecoration(
                                labelText: "Hospital Name",
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 16),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.secondaryColor),
                                ),
                                errorBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primaryColor),
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
                              controller: _remarkController,
                              maxLines: 3,
                              decoration: InputDecoration(
                                labelText: "Remarks",
                                hintText: "Remarks",
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 16),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.secondaryColor),
                                ),
                                errorBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primaryColor),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '* ',
                                          style: const TextStyle().copyWith(
                                              color: AppColor.primaryColor),
                                        ),
                                        const Text(
                                          'Doctor\'s Prescription',
                                          style: TextStyle(),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      AssetManager.example,
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColor.primaryColor),
                                  ),
                                  onPressed: () {
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
                                                  final pickedFile =
                                                      await pickImage(
                                                          ImageSource.gallery);
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
                                  child: Text(
                                    'Select',
                                    style: const TextStyle()
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ],
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
                            if (!_formKey.currentState!.validate()) return;
                            if (file == null) {
                              return;
                            }
                            // if (_formKey.currentState!.validate()) {
                            //   context.read<BloodServicesBloc>().add(
                            //         RequestBlood(
                            //             request: RequestBloodReq(
                            //               bloodGroup:
                            //                   _bloodGroupController.text,
                            //               patientName: _nameController.text,
                            //               patientAge:
                            //                   int.parse(_ageController.text),
                            //               patientGender: _genderController.text,
                            //               hospitalName:
                            //                   _hospitalNameController.text,
                            //               contact: _phoneController.text,
                            //               remarks: _remarkController.text,
                            //             ),
                            //             file: file!),
                            //       );
                            // }
                          },
                          child: Text(
                            'Submit',
                            style:
                                const TextStyle().copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
