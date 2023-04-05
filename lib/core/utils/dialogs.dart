import 'package:blood_bank/core/utils/constants.dart';
import 'package:flutter/material.dart';

showLoadingSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text("Loading.."),
    ),
  );
}

Future<String?> showBloodGroupDialog(BuildContext context) async {
  final size = MediaQuery.of(context).size;
  return await showDialog<String>(
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        width: size.width * .95,
        child: ListView.builder(
          itemCount: bloodGroups.length,
          shrinkWrap: true,
          itemBuilder: ((context, index) => ListTile(
                onTap: () {
                  Navigator.of(context).pop(bloodGroups[index]);
                },
                title: Text(bloodGroups[index]),
              )),
        ),
      ),
    ),
  );
}

Future<String?> showGenderDialog(BuildContext context) async {
  final size = MediaQuery.of(context).size;

  return await showDialog<String>(
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        width: size.width * .95,
        child: ListView.builder(
          itemCount: genders.length,
          shrinkWrap: true,
          itemBuilder: ((context, index) => ListTile(
                onTap: () {
                  Navigator.of(context).pop(genders[index]);
                },
                title: Text(genders[index]),
              )),
        ),
      ),
    ),
  );
}
