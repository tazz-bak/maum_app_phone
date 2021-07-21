import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/server.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/pss/components/body.dart';

class PssFin extends StatelessWidget {
  static String routeName = "/pss_fin";

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
            DefaultButton(
              text: "돌아가기",
              press: () {
                Navigator.pushNamed(context, "/home");
                addResult(_resultPss(pssTotal), "PSS 검사", pssTotal);
                //push
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

String _resultPss(int pssTotal) {
  var result = "정상적 스트레스 상태";
  if (pssTotal >= 19) {
    result = "극심한 스트레스 상태 (우울증/불안증 발생 가능성 높음)";
  } else if (pssTotal >= 17) {
    result = "중간 정도의 스트레스 상태";
  } else if (pssTotal >= 14) {
    result = "경도 스트레스 상태";
  }
  return result;
}
