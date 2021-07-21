import 'package:flutter/cupertino.dart';
import 'package:test_1_0_1/screens/home/home_screen.dart';
import 'package:test_1_0_1/screens/new_user/new_user.dart';
import 'package:test_1_0_1/screens/privacy_policy/privacy_policy.dart';
import 'package:test_1_0_1/screens/sel_test/sel_test.dart';
import 'package:test_1_0_1/screens/splash/splash_screen.dart';
import 'package:test_1_0_1/screens/test_detail/bai/bai_detail.dart';
import 'package:test_1_0_1/screens/test_detail/bai/bai_fin.dart';
import 'package:test_1_0_1/screens/test_detail/bai/bai_main.dart';
import 'package:test_1_0_1/screens/test_detail/ids_sr/ids_detail.dart';
import 'package:test_1_0_1/screens/test_detail/ids_sr/ids_fin.dart';
import 'package:test_1_0_1/screens/test_detail/ids_sr/ids_main.dart';
import 'package:test_1_0_1/screens/test_detail/kmdq/kmdq_detail.dart';
import 'package:test_1_0_1/screens/test_detail/kmdq/kmdq_fin.dart';
import 'package:test_1_0_1/screens/test_detail/kmdq/kmdq_main.dart';
import 'package:test_1_0_1/screens/test_detail/kmdq/kmdq_main_2.dart';
import 'package:test_1_0_1/screens/test_detail/phq/phq_15.dart';
import 'package:test_1_0_1/screens/test_detail/phq/phq_9.dart';
import 'package:test_1_0_1/screens/test_detail/phq/phq_detail.dart';
import 'package:test_1_0_1/screens/test_detail/phq/phq_fin.dart';
import 'package:test_1_0_1/screens/test_detail/psqi/psqi_detail.dart';
import 'package:test_1_0_1/screens/test_detail/psqi/psqi_fin.dart';
import 'package:test_1_0_1/screens/test_detail/psqi/psqi_main.dart';
import 'package:test_1_0_1/screens/test_detail/psqi/psqi_main2.dart';
import 'package:test_1_0_1/screens/test_detail/pss/pss_detail.dart';
import 'package:test_1_0_1/screens/test_detail/pss/pss_fin.dart';
import 'package:test_1_0_1/screens/test_detail/pss/pss_main.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  NewUser.routeName: (context) => NewUser(),
  HomeScreen.routeName: (context) => HomeScreen(),
  PrivacyPolicy.routeName: (context) => PrivacyPolicy(),
  TestSelect.routeName: (context) => TestSelect(),

  // Test Pages
  BAIDetail.routeName: (context) => BAIDetail(),
  BaiMain.routeName: (context) => BaiMain(),
  BaiFin.routeName: (context) => BaiFin(),

  KMDQDetail.routeName: (context) => KMDQDetail(),
  KmdqMain.routeName: (context) => KmdqMain(),
  KmdqMain2.routeName: (context) => KmdqMain2(),
  KmdqFin.routeName: (context) => KmdqFin(),

  PHQDetail.routeName: (context) => PHQDetail(),
  PHQ9.routeName: (context) => PHQ9(),
  PHQ15.routeName: (context) => PHQ15(),
  PhqFin.routeName: (context) => PhqFin(),

  PSQIDetail.routeName: (context) => PSQIDetail(),
  PsqiMain.routeName: (context) => PsqiMain(),
  PsqiMain2.routeName: (context) => PsqiMain2(),
  PsqiFin.routeName: (context) => PsqiFin(),

  IdsDetail.routeName: (context) => IdsDetail(),
  IdsMain.routeName: (context) => IdsMain(),
  IdsFin.routeName: (context) => IdsFin(),

  PssDetail.routeName: (context) => PssDetail(),
  PssMain.routeName:(context) => PssMain(),
  PssFin.routeName: (context) => PssFin(),
};