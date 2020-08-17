class Validators {
  static String validatePhoneNumber(String phoneNumber) {
    const String regexPattern = r"^(?=.*[1\d]{2}|[77]{2})(?=.*\d{8})(?=.{8}$)";

    if (!RegExp(regexPattern).hasMatch(phoneNumber)) {
      return 'Your phone number is invalid';
    }

    return null;
  }
}
