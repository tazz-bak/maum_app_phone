import 'package:flutter/material.dart';
import 'package:test_1_0_1/screens/privacy_policy/components/body.dart';

class PrivacyPolicy extends StatelessWidget {
  static String routeName = "/privacy_policy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("개인 정보 수집 동의"),
      ),
      body: Body(),
    );
  }
}
