import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_1_0_1/screens/new_user/components/profile_form.dart';

class TestResult {
  String userName;
  String userGen;
  int userAge;
  int userChart;

  TestResult(
    this.userName,
    this.userAge,
    this.userChart,
    this.userGen,
  );
}

void addResult(String testResult, testCategory, int testSpeRe) {
  var date = DateTime.now();
  FirebaseFirestore.instance.collection('testResult').add({
    'userName': userName,
    'userAge': userAge,
    'userGen': userGen,
    'userChart': userChart,
    'testResult': testResult,
    'testCategory': testCategory,
    'testSpeRe': testSpeRe,
    'date': date,
  });
}
