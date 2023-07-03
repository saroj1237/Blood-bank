import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  void hideKeyboard() {
    FocusScope.of(this).unfocus();
  }
}
