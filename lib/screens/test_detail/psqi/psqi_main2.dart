import 'package:flutter/material.dart';

import 'components/body_2.dart';

class PsqiMain2 extends StatelessWidget {
  static String routeName = "/psqi_main2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PSQI 검사 2"),),
      body: Body2(),
    );
  }
}
