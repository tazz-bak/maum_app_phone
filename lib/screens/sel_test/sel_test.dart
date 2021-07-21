import 'package:flutter/material.dart';

import 'components/body.dart';

class TestSelect extends StatelessWidget {
  static String routeName = "/sel_test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("검사 선택"),),
      body: Body(),
    );
  }
}
