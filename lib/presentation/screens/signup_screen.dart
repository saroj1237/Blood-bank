import 'package:blood_bank/core/utils/asset_manager.dart';
import 'package:blood_bank/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create an account"),
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
              SvgPicture.asset(
                AssetManager.donorLogin,
                height: 120,
                width: 120,
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 10),
              Text(
                  'Create an account to request blood, register your blood donation, and other features.'),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text('I already have an account.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blue,
                      )),
                ),
              ),
              TextFormField(
                onChanged: (v) {},
                decoration: InputDecoration(
                  hintText: "Full name",
                  isDense: true,
                  prefixIcon: Icon(Icons.person_outline),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColor.secondaryColor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColor.secondaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                onChanged: (v) {},
                decoration: InputDecoration(
                  hintText: "Phone number",
                  isDense: true,
                  prefixIcon: Icon(Icons.phone_android_outlined),
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
                  prefixIcon: Icon(Icons.email_outlined),
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
                  hintText: "Gender",
                  isDense: true,
                  prefixIcon: Icon(Icons.transgender_outlined),
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
                  prefixIcon: Icon(Icons.location_on_outlined),
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
                  child: Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
