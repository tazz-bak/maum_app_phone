import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/server.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/phq/components/body_15.dart';
import 'package:test_1_0_1/screens/test_detail/phq/components/body_9.dart';

class PhqFin extends StatelessWidget {
  static String routeName = "/phq_fin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("검사 완료"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              "수고하셨습니다",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(35),
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            Text(
              "담당 의사 선생님과 함께 결과를 확인해보세요",
              style: TextStyle(
                color: kTextColor,
                fontSize: getProportionateScreenWidth(17),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            Image.asset(
              "assets/images/complete.png",
              height: SizeConfig.screenHeight * 0.4,
            ),
            Spacer(),
            //Text("PHQ9 검사 결과: $phq9Total, ${_resultPhq9(phq9Total)}"),
            //Text("PHQ9 검사 결과: $phq15Total, ${_resultPhq15(phq15Total)}"),
            DefaultButton(
                text: "돌아가기",
                press: () {
                  Navigator.pushNamed(context, "/home");
                  addResult(_resultPhq9(phq9Total), "PHQ-9 검사", phq9Total);
                  addResult(_resultPhq15(phq15Total), "PHQ-15 검사", phq15Total);
                  //push
                }),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

String _resultPhq9(int phq9Total) {
  var result = "평온한 상태";
  if (phq9Total >= 20) {
    result = "중증 우울 (적극적 치료 요함)";
  } else if (phq9Total >= 15) {
    result = "중등도 우울 (치료 요함)";
  } else if (phq9Total >= 10) {
    result = "경도 우울";
  } else if (phq9Total >= 5) {
    result = "최경도 우울";
  }
  return result;
}

String _resultPhq15(int phq15Total) {
  var result = "평온한 상태";
  if (phq15Total >= 15) {
    result = "중증의 신체화 증상";
  } else if (phq15Total >= 10) {
    result = "중등도 신체화 증상";
  } else if (phq15Total >= 5) {
    result = "경도 신체화 증상";
  }
  return result;
}
