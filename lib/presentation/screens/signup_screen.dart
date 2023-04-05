import 'package:blood_bank/core/utils/asset_manager.dart';
import 'package:blood_bank/core/utils/color_manager.dart';
import 'package:blood_bank/core/utils/constants.dart';
import 'package:blood_bank/core/utils/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create an account"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
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
                  child: const Text('I already have an account.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blue,
                      )),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Full name",
                  isDense: true,
                  prefixIcon: const Icon(Icons.person_outline),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
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
                onChanged: (v) {},
                decoration: InputDecoration(
                  hintText: "Phone number",
                  isDense: true,
                  prefixIcon: const Icon(Icons.phone_android_outlined),
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
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                onChanged: (v) {},
                decoration: InputDecoration(
                  hintText: "Email",
                  isDense: true,
                  prefixIcon: const Icon(Icons.email_outlined),
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
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                readOnly: true,
                onTap: () async {
                  final selectedBloodGroup =
                      await showBloodGroupDialog(context);
                  if (selectedBloodGroup != null) {
                    //TODO:assign blood group
                  }
                },
                decoration: InputDecoration(
                  hintText: "Blood group",
                  isDense: true,
                  prefixIcon: const Icon(Icons.bloodtype_outlined),
                  suffixIcon: const Icon(Icons.arrow_drop_down),
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
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                readOnly: true,
                onTap: () async {
                  final gender = await showGenderDialog(context);
                  if (gender != null) {
                    //TODO: gender
                  }
                },
                decoration: InputDecoration(
                  hintText: "Gender",
                  isDense: true,
                  suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
                  prefixIcon: const Icon(Icons.transgender_outlined),
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
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                onChanged: (v) {},
                decoration: InputDecoration(
                  hintText: "Address",
                  prefixIcon: const Icon(Icons.location_on_outlined),
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
                  onPressed: () {},
                  child: const Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
