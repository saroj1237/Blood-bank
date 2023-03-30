import 'package:blood_bank/core/utils/asset_manager.dart';
import 'package:blood_bank/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrganizationLoginView extends StatelessWidget {
  const OrganizationLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        SvgPicture.asset(
          AssetManager.organizationLogin,
          height: 120,
          width: 120,
          color: AppColor.primaryColor,
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        TextFormField(
          onChanged: (v) {},
          decoration: InputDecoration(
            labelText: 'Username',
            hintText: 'Username',
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade100),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.secondaryColor),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.secondaryColor),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          onChanged: (v) {},
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
            child: Text(
              'Log in',
            ),
          ),
        ),
        SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text: 'By logging in you accept our  ',
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 12),
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
      ],
    );
  }
}
