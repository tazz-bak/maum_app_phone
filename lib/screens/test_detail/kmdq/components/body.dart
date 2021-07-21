import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/kmdq/components/questions.dart';

int yes_cnt = 0;
int no_cnt = 0;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: questions.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F7),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1-${questions[index].ques_num}. ${questions[index].question}",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "예",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].yes_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].yes_sel = newValue;
                                    if (newValue == true) {
                                      yes_cnt++;
                                      if (questions[index].no_sel == true) {
                                        questions[index].no_sel = false;
                                        no_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      yes_cnt--;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "아니오",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].no_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].no_sel = newValue;
                                    if (newValue == true) {
                                      no_cnt++;
                                      if (questions[index].yes_sel == true) {
                                        questions[index].yes_sel = false;
                                        yes_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      no_cnt--;
                                    }
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            DefaultButton(
                text: "계속하기",
                press: () => Navigator.pushNamed(context, "/kmdq_main_2"),
                ),
            //Text("ques1 result $ques1, $yes_cnt, $no_cnt"),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
