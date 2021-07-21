import 'package:flutter/material.dart';

import 'components/body.dart';

class IdsMain extends StatelessWidget {
  static String routeName = "/ids_main";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IDS-SR 검사"),),
      body: Body(),
    );
  }
}
