import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF338E3C); // green 700
const kPrimaryLightColor = Color(0xFFA5D6A7); // green 200
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFC8E6C9), Color(0xFF338E3C)],
);
const kSecondaryColor = Color(0xFF4CAF50); // green
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "메일을 입력해주세요";
const String kInvalidEmailError = "잘못된 형식의 메일입니다";
const String kPassNullError = "비밀번호를 입력해주세요";
const String kShortPassError = "비밀번호가 너무 짧습니다";
const String kMatchPassError = "비밀번호가 틀립니다";
const String kNamelNullError = "이름을 입력해주세요";
const String kPhoneNumberNullError = "전화번호를 입력해주세요";
const String kAddressNullError = "주소를 입력해주세요";
