import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/size_config.dart';

var userName, userAge, userChart, userGen;

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController chartController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: "이름",
              hintText: "이름을 입력해주세요",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(Icons.account_circle),
            ),
            onChanged: (nameController) {
              userName = nameController;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          TextFormField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "나이",
              hintText: "나이를 입력해주세요",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(
                Icons.account_circle,
              ),
            ),
            onChanged: (ageController) {
              userAge = ageController;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          TextFormField(
            controller: genderController,
            decoration: InputDecoration(
              labelText: "성별",
              hintText: "성별 입력해주세요",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(Icons.account_circle),
            ),
            onChanged: (genderController) {
              userGen = genderController;
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          TextFormField(
            controller: chartController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "차트번호",
              hintText: "차트번호를 입력해주세요",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(Icons.format_list_numbered_rounded),
            ),
            onChanged: (chartController) {
              userChart = chartController;
            },
          ),
        ],
      ),
    );
  }
}
