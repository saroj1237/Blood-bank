import 'package:flutter/material.dart';

showLoadingSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text("Loading.."),
    ),
  );
}
