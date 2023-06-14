import 'package:get/get.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';


String? validateEmail(String value, bool? isMobile) {
  if (!GetUtils.isEmail(value)) {
    return "Provide valid Email";
  }
  return isMobile==true? null:"";
}

String? validatePassword(String value, bool? isMobile) {
  if (value.length < 8) {
    return "Password must be of 8 characters";
  }
  return isMobile==true? null:"";
}
