import 'package:blood_bank/core/extensions/context_extensions.dart';
import 'package:blood_bank/core/helpers/pick_date_np.dart';
import 'package:blood_bank/core/resources/resources.dart';
import 'package:blood_bank/core/services/form_validator.dart';
import 'package:blood_bank/domain/models/blood/camp.dart';
import 'package:blood_bank/presentation/bloc/blood_camp_bloc/blood_camp_bloc.dart';
import 'package:blood_bank/presentation/bloc/blood_services_bloc/blood_services_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';

import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;

class BookCampScreen extends StatefulWidget {
  const BookCampScreen({super.key});

  @override
  State<BookCampScreen> createState() => _BookCampScreenState();
}

class _BookCampScreenState extends State<BookCampScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _orgNameController = TextEditingController();
  final TextEditingController _venueController = TextEditingController();
  final TextEditingController _donorCountController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Book Camp"),
      ),
      body: SingleChildScrollView(
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
                      image: AssetImage(AssetManager.bookCamp),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Please fill up the form for requesting camp book. All the fields are required.',
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
                  controller: _orgNameController,
                  labelText: "Organizer",
                  hintText: "Enter organizer name",
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _venueController,
                  labelText: "Venue",
                  hintText: "Enter venue",
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _donorCountController,
                  labelText: "Estimated no. of Donors",
                  hintText: "Enter the estimated no. of donors",
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _phoneController,
                  labelText: "Contact number",
                  hintText: "Enter a valid contact number",
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _emailController,
                  labelText: "Email",
                  hintText: "Enter a valid email",
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _dateController,
                  labelText: "Date",
                  readOnly: true,
                  suffixIcon: Icons.arrow_drop_down,
                  onTap: () async {
                    final pickedDate = await pickNepaliDate(context);
                    if (pickedDate != null) {
                      _dateController.text = pickedDate;
                    }
                  },
                  hintText: "Enter date of event",
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _messageController,
                  labelText: "Message",
                  hintText: "Enter message",
                ),
                const SizedBox(height: 16),
                BlocBuilder<BloodCampBloc, BloodCampState>(
                  builder: (context, state) {
                    if (state.status == BloodCampStatus.loading) {
                      return const CircularProgressIndicator();
                    }
                    return SizedBox(
                      height: buttonHeight,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                AppColor.primaryColor)),
                        onPressed: () {
                          context.hideKeyboard();
                          if (!_formKey.currentState!.validate()) return;
                          context.read<BloodCampBloc>().add(
                                BookCamp(
                                  request: BookCampRequest(
                                    name: _nameController.text,
                                    organizer_name: _orgNameController.text,
                                    email: _emailController.text,
                                    phone_number: _phoneController.text,
                                    donors_no: _donorCountController.text,
                                    venue: _venueController.text,
                                    message: _messageController.text,
                                    date_time: _dateController.text,
                                  ),
                                ),
                              );
                        },
                        child: Text(
                          'Submit',
                          style:
                              const TextStyle().copyWith(color: Colors.white),
                        ),
                      ),
                    );
                  },
                )
              ],
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
    IconData? suffixIcon,
  }) {
    return TextFormField(
      controller: controller,
      validator: FormValidator.notEmpty,
      readOnly: readOnly,
      onTap: onTap,
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
