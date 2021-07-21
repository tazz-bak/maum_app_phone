import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/new_user/components/profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  '반갑습니다',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(33),
                    fontWeight: FontWeight.bold,
                  ),
               ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  '사용자 정보를 입력해주세요',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                ProfileForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                DefaultButton(
                  text: "계속하기",
                  press: () => Navigator.pushNamed(context, "/sel_test"),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                //NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


