import 'package:flutter/material.dart';

import 'components/body.dart';

class PsqiMain extends StatelessWidget {
  static String routeName = "/psqi_main";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PSQI 검사"),),
      body: Body(),
    );
  }
}
