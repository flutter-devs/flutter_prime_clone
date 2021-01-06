
import 'package:prime_clone/resources/strings.dart';

class Validators {
  String pinValidator(String value) {
    String pattern = r'^(?:[+0]9)?[0-9]{1}$';
    RegExp regex = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.pinRequired;
    } else if (value.isEmpty || value.length < 4) {
      return Strings.invalidPin;
    } else {
      return null;
    }
  }

  String validateOTP(
    String value,
  ) {
    String pattern = r'^(?:[+0]9)?[0-9]{1}$';
    RegExp regex = new RegExp(pattern);
    if (value.length == 0) {
      return Strings.otpRequired;
    } else if (value.isEmpty || value.length < 4) {
      return Strings.invalidOtp;
    } else {
      return null;
    }
  }
}
