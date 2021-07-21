import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/theme.dart';
import 'package:test_1_0_1/screens/new_user/new_user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'components/routs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: BAIDetail(),
      initialRoute: NewUser.routeName,
      routes: routes,
    );
  }
}