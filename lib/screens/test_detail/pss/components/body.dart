import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/test_detail/pss/components/questions.dart';

int _opt1_cnt = 0;
int _opt2_cnt = 0;
int _opt3_cnt = 0;
int _opt4_cnt = 0;
int _opt5_cnt = 0;
int pssTotal = 0;

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
                "지난 한 달 동안에 대해 응답해주세요.",
                style: TextStyle(
                  color: Colors.grey[700],
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
                              Text(
                                "전혀 아니다",
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
                                    if (newValue == true) {
                                      _opt1_cnt++;
                                      if (questions[index].ques_num <=8 && questions[index].ques_num >=4) {
                                        pssTotal = pssTotal + 4;
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          _opt5_cnt--;
                                        }
                                      } else {
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt5_cnt--;
                                        }
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
                                "거의 아니다",
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
                                    if (newValue == true) {
                                      _opt2_cnt++;
                                      if (questions[index].ques_num <=8 && questions[index].ques_num >=4) {
                                        pssTotal = pssTotal + 3;
                                        if (questions[index].option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt1_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          _opt5_cnt--;
                                        }
                                      } else {
                                        pssTotal = pssTotal + 1;
                                        if (questions[index].option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          _opt1_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt5_cnt--;
                                        }
                                      }
                                    } else if (newValue == false) {
                                      pssTotal = pssTotal - 1;
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
                                "가끔 그렇다",
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
                                    if (newValue == true) {
                                      pssTotal = pssTotal + 2;
                                      _opt3_cnt++;
                                      if (questions[index].ques_num <=8 && questions[index].ques_num >=4) {
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt1_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          _opt5_cnt--;
                                        }
                                      } else {
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          _opt1_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt5_cnt--;
                                        }
                                      }
                                    } else if (newValue == false) {
                                      pssTotal = pssTotal - 2;
                                      _opt3_cnt--;
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
                                "꽤 자주 그렇다",
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
                                    if (newValue == true) {
                                      _opt4_cnt++;
                                      if (questions[index].ques_num <=8 && questions[index].ques_num >=4) {
                                        pssTotal = pssTotal + 1;
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt1_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          _opt5_cnt--;
                                        }
                                      } else {
                                        pssTotal = pssTotal + 3;
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          _opt1_cnt--;
                                        } else if (questions[index]
                                            .option5_sel ==
                                            true) {
                                          questions[index].option5_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt5_cnt--;
                                        }
                                      }
                                    } else if (newValue == false) {
                                      pssTotal = pssTotal - 3;
                                      _opt4_cnt--;
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
                                "매우 자주 그렇다",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: getProportionateScreenWidth(14),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Checkbox(
                                activeColor: kPrimaryColor,
                                value: questions[index].option5_sel,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    questions[index].option5_sel = newValue;
                                    if (newValue == true) {
                                      _opt5_cnt++;
                                      if (questions[index].ques_num <=8 && questions[index].ques_num >=4) {
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          pssTotal = pssTotal - 4;
                                          _opt1_cnt--;
                                        }
                                      } else {
                                        pssTotal = pssTotal + 4;
                                        if (questions[index].option2_sel ==
                                            true) {
                                          questions[index].option2_sel = false;
                                          pssTotal = pssTotal - 1;
                                          _opt2_cnt--;
                                        } else if (questions[index]
                                            .option3_sel ==
                                            true) {
                                          questions[index].option3_sel = false;
                                          pssTotal = pssTotal - 2;
                                          _opt3_cnt--;
                                        } else if (questions[index]
                                            .option4_sel ==
                                            true) {
                                          questions[index].option4_sel = false;
                                          pssTotal = pssTotal - 3;
                                          _opt4_cnt--;
                                        } else if (questions[index]
                                            .option1_sel ==
                                            true) {
                                          questions[index].option1_sel = false;
                                          _opt1_cnt--;
                                        }
                                      }
                                    } else if (newValue == false) {
                                      pssTotal = pssTotal - 4;
                                      _opt5_cnt--;
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
            //Text("$pssTotal, $_opt1_cnt, $_opt2_cnt, $_opt3_cnt, $_opt4_cnt, $_opt5_cnt"),
            DefaultButton(
              text: "계속하기",
              press: () => Navigator.pushNamed(context, "/pss_fin"),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
