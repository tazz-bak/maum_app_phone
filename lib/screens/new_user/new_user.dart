import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/new_user/components/body.dart';

class NewUser extends StatelessWidget {
  static String routeName = "/new_user";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("사용자 정보 입력"),
      ),
      body: Body(),
    );
  }
}
