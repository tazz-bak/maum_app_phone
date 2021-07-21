import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../components/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '마음',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' 헤아리기',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
          ),
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 1,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(280),
          width: getProportionateScreenWidth(300),
        ),
      ],
    );
  }
}
