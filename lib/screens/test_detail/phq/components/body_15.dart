import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/phq/components/questions_15.dart';

int _opt1_cnt = 0;
int _opt2_cnt = 0;
int _opt3_cnt = 0;
int phq15Total = 0;

class Body15 extends StatefulWidget {
  @override
  _Body15State createState() => _Body15State();
}

class _Body15State extends State<Body15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "지난 4주 동안에 대해 응답해주세요.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: questions_15.length,
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
                            "${questions_15[index].ques_num}. ${questions_15[index].question}에 시달렸습니까?",
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
                                "전혀 시달리지 않음",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions_15[index].option1_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions_15[index].option1_sel = newValue;
                                    if (newValue == true) {
                                      _opt1_cnt++;
                                      if (questions_15[index].option2_sel ==
                                          true) {
                                        questions_15[index].option2_sel = false;
                                        phq15Total = phq15Total - 1;
                                        _opt2_cnt--;
                                      } else if (questions_15[index]
                                          .option3_sel ==
                                          true) {
                                        questions_15[index].option3_sel = false;
                                        phq15Total = phq15Total - 2;
                                        _opt3_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      _opt1_cnt--;
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
                                "약간 시달림",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions_15[index].option2_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions_15[index].option2_sel = newValue;
                                    if (newValue == true) {
                                      _opt2_cnt++;
                                      phq15Total = phq15Total + 1;
                                      if (questions_15[index].option1_sel ==
                                          true) {
                                        questions_15[index].option1_sel = false;
                                        _opt1_cnt--;
                                      } else if (questions_15[index]
                                          .option3_sel ==
                                          true) {
                                        questions_15[index].option3_sel = false;
                                        phq15Total = phq15Total - 2;
                                        _opt3_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      _opt2_cnt--;
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
                                "대단히 시달림",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions_15[index].option3_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions_15[index].option3_sel = newValue;
                                    if (newValue == true) {
                                      _opt3_cnt++;
                                      phq15Total = phq15Total + 2;
                                      if (questions_15[index].option1_sel ==
                                          true) {
                                        questions_15[index].option1_sel = false;
                                        _opt1_cnt--;
                                      } else if (questions_15[index]
                                          .option2_sel ==
                                          true) {
                                        questions_15[index].option2_sel = false;
                                        phq15Total = phq15Total - 1;
                                        _opt2_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      _opt3_cnt--;
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
            //Text("$phq15Total"),
            DefaultButton(
              text: "제출하기",
              press: () => Navigator.pushNamed(context, "/phq_fin"),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
