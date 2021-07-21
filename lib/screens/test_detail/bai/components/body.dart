import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/bai/components/questions.dart';

int baiTotal = 0;
int _option1_cnt = 0;
int _option2_cnt = 0;
int _option3_cnt = 0;
int _option4_cnt = 0;

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
                              Text(
                                "전혀 느끼지 않았다",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].option1_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].option1_sel = newValue;
                                    if (questions[index].option1_sel == true) {
                                      _option1_cnt++;
                                      if (questions[index].option2_sel ==
                                          true) {
                                        questions[index].option2_sel = false;
                                        _option2_cnt--;
                                      } else if (questions[index].option3_sel ==
                                          true) {
                                        questions[index].option3_sel = false;
                                        _option3_cnt--;
                                      } else if (questions[index].option4_sel ==
                                          true) {
                                        questions[index].option4_sel = false;
                                        _option4_cnt--;
                                      }
                                    } else if (questions[index].option1_sel ==
                                        false) {
                                      _option1_cnt--;
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
                                "조금 느꼈다",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].option2_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].option2_sel = newValue;
                                    if (questions[index].option2_sel == true &&
                                        questions[index].result == 0) {
                                      questions[index].result =
                                          questions[index].result + 1;
                                      baiTotal =
                                          baiTotal + questions[index].result;
                                      _option2_cnt++;
                                      if (questions[index].option1_sel ==
                                          true) {
                                        questions[index].option1_sel = false;
                                        _option1_cnt--;
                                      } else if (questions[index].option3_sel ==
                                          true) {
                                        questions[index].option3_sel = false;
                                        _option3_cnt--;
                                      } else if (questions[index].option4_sel ==
                                          true) {
                                        questions[index].option4_sel = false;
                                        _option4_cnt--;
                                      }
                                    } else if (questions[index].option2_sel ==
                                        false) {
                                      questions[index].result = 0;
                                      baiTotal = baiTotal - 1;
                                      _option2_cnt--;
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
                                "상당히 느꼈다",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].option3_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].option3_sel = newValue;
                                    if (questions[index].option3_sel == true &&
                                        questions[index].result == 0) {
                                      questions[index].result =
                                          questions[index].result + 2;
                                      baiTotal =
                                          baiTotal + questions[index].result;
                                      _option3_cnt++;
                                      if (questions[index].option2_sel ==
                                          true) {
                                        questions[index].option2_sel = false;
                                        _option2_cnt--;
                                      } else if (questions[index].option1_sel ==
                                          true) {
                                        questions[index].option1_sel = false;
                                        _option1_cnt--;
                                      } else if (questions[index].option4_sel ==
                                          true) {
                                        questions[index].option4_sel = false;
                                        _option4_cnt--;
                                      }
                                    } else if (questions[index].option3_sel ==
                                        false) {
                                      questions[index].result = 0;
                                      baiTotal = baiTotal - 2;
                                      _option3_cnt--;
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
                                "심하게 느꼈다",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].option4_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].option4_sel = newValue;
                                    if (questions[index].option4_sel == true &&
                                        questions[index].result == 0) {
                                      questions[index].result =
                                          questions[index].result + 3;
                                      baiTotal =
                                          baiTotal + questions[index].result;
                                      _option4_cnt++;
                                      if (questions[index].option2_sel ==
                                          true) {
                                        questions[index].option2_sel = false;
                                        _option2_cnt--;
                                      } else if (questions[index].option3_sel ==
                                          true) {
                                        questions[index].option3_sel = false;
                                        _option3_cnt--;
                                      } else if (questions[index].option1_sel ==
                                          true) {
                                        questions[index].option1_sel = false;
                                        _option1_cnt--;
                                      }
                                    } else if (questions[index].option4_sel ==
                                        false) {
                                      questions[index].result = 0;
                                      baiTotal = baiTotal - 3;
                                      _option4_cnt--;
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
            //Text("The total is $baiTotal\n $option1_cnt \n$option2_cnt \n$option3_cnt \n$option4_cnt \n"),
            DefaultButton(
              text: "제출하기",
              press: () => Navigator.pushNamed(context, "/bai_fin"),
              //제출할 때 검사 내용 서버로 보내기
            ),
            //Text("bai total $baiTotal , $option1_cnt, $option2_cnt, $option3_cnt, $option4_cnt"),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
