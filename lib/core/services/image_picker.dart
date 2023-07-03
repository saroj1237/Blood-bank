import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File?> pickImage(ImageSource source) async {
  final pickedImage = await ImagePicker().pickImage(
    source: source,
    imageQuality: 20,
  );
  if (pickedImage != null) {
    File file = File(pickedImage.path);
    return file;
  }
}
