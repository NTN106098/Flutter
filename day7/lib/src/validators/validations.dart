class Validations {
  static bool isValidationUser(String user) {
    return user != null && user.length > 6 && user.contains("@");
  }

  static bool isValidationPass(String pass) {
    return pass != null && pass.length > 6;
  }
}
