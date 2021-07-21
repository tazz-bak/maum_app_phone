import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';

class PHQDetail extends StatelessWidget {
  static String routeName = "/phq_detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
              image: AssetImage("assets/images/lonely.png"),
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
                "PHQ 검사",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: getProportionateScreenWidth(34),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Text(
                "PHQ (Patient Health Questionnaire) 검사는 \n간단하게 우울증을 선별하고, 심각도를 평가하기 위한 자가보고형 검사입니다."
                    "다양한 우울증 관련 증상들이 지난 2주 동안 얼마나 자주 일어났는지 체크합니다.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(flex: 4),
              DefaultButton(
                text: "시작하기",
                press: () => Navigator.pushNamed(context, "/phq9"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
