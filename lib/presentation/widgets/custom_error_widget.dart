import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.error});
  final Object error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("$error"),
    );
  }
}
