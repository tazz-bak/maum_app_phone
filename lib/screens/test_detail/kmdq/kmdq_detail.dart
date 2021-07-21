import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';

class KMDQDetail extends StatelessWidget {
  static String routeName = "/kmdq_detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
              image: AssetImage("assets/images/sitting girl.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            )),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/home"),
                    child: SvgPicture.asset("assets/icons/arrow-left.svg"),
                  ),
                  SvgPicture.asset("assets/icons/more-vertical.svg"),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
              Text(
                "K-MDQ 검사",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: getProportionateScreenWidth(34),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Text(
                "K-MDQ (K-Mood Disorder Questionnaire) 검사는 \n양극성 장애 진단의 문제들을 해결할 수 있는 하나의 방법입니다. "
                '본 검사는 "예-아니오"로 대답하는 문항들로, 과거에 있었던 기분의 변화를 조사합니다.',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(3)),
              Text(
                "* 본 검사는 현재의 상태를 평가하는 것이 아닙니다!",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 4),
              DefaultButton(
                text: "시작하기",
                press: () => Navigator.pushNamed(context, "/kmdq_main"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
