import 'package:flutter/material.dart';
import 'package:test_1_0_1/screens/menu_bar/menu_bar.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MenuBar(),
    );
  }
}
