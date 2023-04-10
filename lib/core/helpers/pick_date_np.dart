import 'package:flutter/material.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;
import 'package:nepali_utils/nepali_utils.dart';

Future<String?> pickNepaliDate(BuildContext context) async {
  final val = NepaliDateTime.now().year;

  NepaliDateTime? selectedDateTime = await picker.showAdaptiveDatePicker(
    context: context,
    initialDate: NepaliDateTime(2060),
    firstDate: NepaliDateTime(2020),
    lastDate: NepaliDateTime(val),
    initialDatePickerMode: DatePickerMode.year,
  );

  if (selectedDateTime != null) {
    String date = selectedDateTime.toIso8601String().substring(0, 10);
    return date;
  }
  return null;
}
