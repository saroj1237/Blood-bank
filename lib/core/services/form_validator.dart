class FormValidator {
  static String? phoneNumberValidator(String? phone) {
    if (phone == null || phone.isEmpty) {
      return "Enter phone number";
    } else if (!RegExp(r'(\+977)?[9][6-9]\d{8}').hasMatch(phone)) {
      return "Invalid phone number";
    }
    return null;
  }

  static String? notEmpty(String? val) {
    if (val == null || val.isEmpty) {
      return "Required";
    }
    return null;
  }
}
