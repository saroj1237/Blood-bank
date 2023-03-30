import 'package:blood_bank/core/routes/go_router.dart';
import 'package:blood_bank/core/utils/asset_manager.dart';
import 'package:blood_bank/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DonorLoginView extends StatelessWidget {
  const DonorLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        TextFormField(
          onChanged: (v) {},
          decoration: InputDecoration(
            labelText: 'Phone Number',
            // hintText: 'XXXXX',
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
              borderSide: BorderSide(color: AppColor.secondaryColor),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          onChanged: (v) {},
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
                color: AppColor.secondaryColor,
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
            onPressed: () {},
            child: const Text(
              'Log in',
            ),
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text: 'By logging in you accept our  ',
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 12),
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
            context.push(AppRoutes.signupRoute);
          },
          child: const Text('Create account?',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColor.blue,
              )),
        )
      ],
    );
  }
}
