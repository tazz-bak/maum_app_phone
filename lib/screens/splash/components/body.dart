import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/screens/splash/components/splash_content.dart';

import '../../../components/constants.dart';
import '../../../components/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (val) {
                    setState(() {
                      currentPage = val;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]["text"],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 2),
                    DefaultButton(
                      text: "μμνκΈ°",
                      press: () {
                        Navigator.pushNamed(context, "/home");
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(
        right: 5,
      ),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  List<Map<String, String>> splashData = [
    {
      "text": "νλ  μΌμ΄ μλ€λ©΄ λ€λ €μ£ΌμΈμ",
      "image": "assets/images/mental health.png",
    },
    {
      "text": "λΉμ μκ² νμν μ¬λ¦¬ κ²μ¬λ₯Ό μ§νν΄ λ³΄μΈμ",
      "image": "assets/images/mental health counseling 3.png",
    },
    {
      "text": "κ²μ¬ κ²°κ³Όλ₯Ό λ°λ‘ νμΈν΄λ³Ό μ μμ΄μ",
      "image": "assets/images/mental health questionnaire.png",
    },
  ];
}