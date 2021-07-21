import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';


class BAIDetail extends StatelessWidget {
  static String routeName = "/bai_detail";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
              image: AssetImage("assets/images/counselor.png"),
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
                "BAI 검사",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: getProportionateScreenWidth(34),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Text(
                "BAI (Beck Anxiety Inventory) 검사는 \n정신과에서 불안의 정도를 측정하는 도구로 쓰입니다. \n"
                "본 검사는 불안의 인지적, 정서적, 신체적 영역을 포함하는 총 21개의 문항으로 구성되어 있습니다.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(flex: 4),
              DefaultButton(
                text: "시작하기",
                press: () => Navigator.pushNamed(context, "/bai_main"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
