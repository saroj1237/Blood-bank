import 'package:flutter/material.dart';

showLoadingSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text("Loading.."),
    ),
  );
}

showSnackBar(BuildContext context, {String? message, Color? bgColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: bgColor,
      behavior: SnackBarBehavior.floating,
      content: Text(message ?? "Data"),
    ),
  );
}
