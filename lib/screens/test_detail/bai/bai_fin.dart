import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/server.dart';
import 'package:test_1_0_1/components/size_config.dart';

import 'components/body.dart';

class BaiFin extends StatelessWidget {
  static String routeName = "/bai_fin";

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
            //Text("BAI 검사 결과: $baiTotal, ${_resultBai(baiTotal)}"),
            DefaultButton(
              text: "돌아가기",
              press: () {
                Navigator.pushNamed(context, "/home");
                addResult(_resultBai(baiTotal), "BAI 검사", baiTotal);
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

String _resultBai(int baiTotal) {
  var result = "평온한 상태";
  if (baiTotal >= 32) {
    result = "극심한 불안 상태";
  } else if (baiTotal >= 27) {
    result = "심한 불안 상태";
  } else if (baiTotal >= 22) {
    result = "불안한 상태";
  }
  return result;
}
