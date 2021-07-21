import 'package:flutter/material.dart';

import 'components/body.dart';

class KmdqMain extends StatelessWidget {
  static String routeName = "/kmdq_main";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("K-MDQ 검사"),
      ),
      body: Body(),
    );
  }
}
