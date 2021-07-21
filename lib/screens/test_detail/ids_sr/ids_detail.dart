import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';

class IdsDetail extends StatelessWidget {
  static String routeName = "/ids_detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
              image: AssetImage("assets/images/insomnia2.png"),
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
                "IDS-SR 검사",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: getProportionateScreenWidth(34),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Text(
                "IDS (Inventory of Depressive Symptomatology) 검사는 자신의 기분, 식욕, 수면, 인지상태 등을 정량화하여 우울증에 대한 검사를 할 수 있습니다.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(flex: 4),
              DefaultButton(
                text: "시작하기",
                press: () => Navigator.pushNamed(context, "/ids_main"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
