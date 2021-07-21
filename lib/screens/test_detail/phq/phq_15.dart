import 'package:flutter/material.dart';
import 'package:test_1_0_1/screens/test_detail/phq/components/body_15.dart';

class PHQ15 extends StatelessWidget {
  static String routeName = "/phq15";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PHQ-15"),
      ),
      body: Body15(),
    );
  }
}
