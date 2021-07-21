import 'package:flutter/material.dart';

import 'components/body_2.dart';

class KmdqMain2 extends StatelessWidget {
  static String routeName = "/kmdq_main_2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("K-MDQ 검사 2"),
      ),
      body: Body2(),
    );
  }
}
