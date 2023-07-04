class FormValidator {
  static String? phoneNumberValidator(String? phone) {
    if (phone == null || phone.isEmpty) {
      return "Enter phone number";
    } else if (!RegExp(r'(\+977)?[9][6-9]\d{8}').hasMatch(phone)) {
      return "Invalid phone number";
    }
    return null;
  }

  static String? notEmpty(String? val, {String? data}) {
    if (val == null || val.isEmpty) {
      return data == null ? "Required" : "$data is required";
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address.';
    }

    // Use a regular expression to validate the email format
    // Here, we use a simple pattern for demonstration purposes.
    // You can use a more robust pattern for production use.
    final emailRegex = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }

    return null;
  }
}
