import 'package:flutter/material.dart';
import 'package:test_1_0_1/screens/test_detail/phq/components/body_9.dart';

class PHQ9 extends StatelessWidget {
  static String routeName = "/phq9";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PHQ-9"),
      ),
      body: Body9(),
    );
  }
}
