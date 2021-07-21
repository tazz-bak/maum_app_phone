import 'package:flutter/material.dart';

import 'components/body.dart';

class BaiMain extends StatelessWidget {
  static String routeName = "/bai_main";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BAI 검사"),
      ),
      body: Body(),
    );
  }
}
