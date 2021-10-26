import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

class Constants {
  static const double kPadding = 10.0;
  static const Color kPrimaryColor = Color(0xFF1E2360);
  static const Color kPrimaryLightColor = Color(0xFF94BBF8);
  static const Color kSecondaryColor = Colors.blueGrey;
  static const Color kTextColor = Colors.black;

  static const kAnimationDuration = Duration(milliseconds: 200);
}

final headingStyle = TextStyle(
  color: Colors.black,
  fontSize: getProportionedScreenWidth(25),
  fontWeight: FontWeight.bold,
);

final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp phoneNumberValidatorRegExp = RegExp(r"^[0-9]");
const String kEmailNullError = "Please enter your email";
const String kFirstNameNullError = "Please enter your first name";
const String kAddressNullError = "Please enter your address";
const String kLastNameNullError = "Please enter your last name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kInvalidPhoneNumberError = "Please enter a valid phone number";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please enter your password";
const String kPassMatchNullError = "Password does not match";
const String kShortPassError = "Password should be longer than 8 characters";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProportionedScreenWidth(20)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: Constants.kTextColor),
  );
}