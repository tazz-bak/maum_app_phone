import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/server.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/kmdq/components/body_2.dart';

import 'components/body.dart';

class KmdqFin extends StatelessWidget {
  static String routeName = "/kmdq_fin";

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
            //Text("KMDQ 검사 결과: $kmdqTotal, ${_resultKmdq(kmdqTotal)}"),
            DefaultButton(
              text: "돌아가기",
              press: () {
                Navigator.pushNamed(context, "/home");
                addResult(_resultKmdq(kmdqTotal), "KMDQ 검사", kmdqTotal);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

String _resultKmdq(int kmdqTotal) {
  var result = "평온한 상태";
  if (yes_cnt >= 7 && kmdqTotal == 2) {
    result = "양극성 장애 가능성 있음";
  }
  return result;
}