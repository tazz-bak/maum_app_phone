import 'package:flutter/material.dart';

import 'components/body.dart';

class PssMain extends StatelessWidget {
  static String routeName = "/pss_main";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PSS 검사"),),
      body: Body(),
    );
  }
}
