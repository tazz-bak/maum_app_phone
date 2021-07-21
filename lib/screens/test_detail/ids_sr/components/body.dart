import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/ids_sr/components/questions.dart';

int _opt1_cnt = 0;
int _opt2_cnt = 0;
int _opt3_cnt = 0;
int _opt4_cnt = 0;
int idsTotal = 0;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "지난 일주일간의 상태를 가장 잘 설명해 주는 보기를 선택해주세요.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
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
                            "${questions[index].ques_num}. ${questions[index].question}",
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
                              Container(
                                width: getProportionateScreenWidth(240),
                                child: Text(
                                  "${questions[index].opt1}",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].opt1_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].opt1_sel = newValue;
                                    if (newValue == true) {
                                      _opt1_cnt++;
                                      if (questions[index].opt2_sel ==
                                          true) {
                                        questions[index].opt2_sel = false;
                                        idsTotal = idsTotal - 1;
                                        _opt2_cnt--;
                                      } else if (questions[index].opt3_sel ==
                                          true) {
                                        questions[index].opt3_sel = false;
                                        idsTotal = idsTotal - 2;
                                        _opt3_cnt--;
                                      } else if (questions[index].opt4_sel ==
                                          true) {
                                        questions[index].opt4_sel = false;
                                        idsTotal = idsTotal - 3;
                                        _opt4_cnt--;
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
                              Container(
                                width: getProportionateScreenWidth(240),
                                child: Text(
                                  "${questions[index].opt2}",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].opt2_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].opt2_sel = newValue;
                                    if (newValue == true) {
                                      idsTotal++;
                                      _opt2_cnt++;
                                      if (questions[index].opt1_sel ==
                                          true) {
                                        questions[index].opt1_sel = false;
                                        _opt1_cnt--;
                                      } else if (questions[index].opt3_sel ==
                                          true) {
                                        questions[index].opt3_sel = false;
                                        idsTotal = idsTotal - 2;
                                        _opt3_cnt--;
                                      } else if (questions[index].opt4_sel ==
                                          true) {
                                        questions[index].opt4_sel = false;
                                        idsTotal = idsTotal - 3;
                                        _opt4_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      idsTotal--;
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
                              Container(
                                width: getProportionateScreenWidth(240),
                                child: Text(
                                  "${questions[index].opt3}",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].opt3_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].opt3_sel = newValue;
                                    if (newValue == true) {
                                      idsTotal = idsTotal + 2;
                                      _opt3_cnt++;
                                      if (questions[index].opt2_sel ==
                                          true) {
                                        questions[index].opt2_sel = false;
                                        idsTotal = idsTotal - 1;
                                        _opt2_cnt--;
                                      } else if (questions[index].opt1_sel ==
                                          true) {
                                        questions[index].opt1_sel = false;
                                        _opt1_cnt--;
                                      } else if (questions[index].opt4_sel ==
                                          true) {
                                        questions[index].opt4_sel = false;
                                        idsTotal = idsTotal - 3;
                                        _opt4_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      idsTotal = idsTotal - 2;
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
                              Container(
                                width: getProportionateScreenWidth(240),
                                child: Text(
                                  "${questions[index].opt4}",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].opt4_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].opt4_sel = newValue;
                                    if (newValue == true) {
                                      idsTotal = idsTotal + 3;
                                      _opt4_cnt++;
                                      if (questions[index].opt2_sel ==
                                          true) {
                                        questions[index].opt2_sel = false;
                                        idsTotal = idsTotal - 1;
                                        _opt2_cnt--;
                                      } else if (questions[index].opt3_sel ==
                                          true) {
                                        questions[index].opt3_sel = false;
                                        idsTotal = idsTotal - 2;
                                        _opt3_cnt--;
                                      } else if (questions[index].opt1_sel ==
                                          true) {
                                        questions[index].opt1_sel = false;
                                        _opt1_cnt--;
                                      }
                                    } else if (newValue == false) {
                                      idsTotal = idsTotal - 3;
                                      _opt4_cnt--;
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
            //Text("$idsTotal, $_opt1_cnt, $_opt2_cnt, $_opt3_cnt, $_opt4_cnt,"),
            DefaultButton(
              text: "계속하기",
              press: () => Navigator.pushNamed(context, "/ids_fin"),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
