class Validator {
  static String? validateEntry(String? value) {
    if (value == null || !RegExp(r'\S').hasMatch(value)) {
      return "Please type a message";
    }

    // 2. SECURITY AWARENESS: Check for potential XSS/HTML tags
    // If the input contains < or >, return an error.
    if (RegExp(r'[<>]').hasMatch(value)) {
      return "Special characters < and > are not allowed for security.";
    }

    return null; // Valid
  }
}
