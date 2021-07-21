import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';

bool ques2_yes = false;
bool ques2_no = false;
int ques2 = 0;
bool ques3_op1 = false;
bool ques3_op2 = false;
bool ques3_op3 = false;
bool ques3_op4 = false;
int ques3 = 0;
int kmdqTotal = ques2+ques3;

class Body2 extends StatefulWidget {
  @override
  _Body2State createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              height: getProportionateScreenHeight(205),
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
                      "2. 만약 위의 질문 중에서 하나 이상 예라고 했다면, 그 중 몇 가지는 같은 시기에 벌어진 것입니까?",
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
                          value: ques2_yes,
                          onChanged: (bool newValue) {
                            setState(() {
                              ques2_yes = newValue;
                              if (newValue == true) {
                                ques2 = 1;
                                if (ques2_no == true) {
                                  ques2_no = false;
                                  ques2 = 1;
                                }
                              } else if (newValue == false) {
                                ques2 = 0;
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
                          value: ques2_no,
                          onChanged: (bool newValue) {
                            setState(() {
                              ques2_no = newValue;
                              if (newValue == true) {
                                ques2 = 0;
                                if (ques2_yes == true) {
                                  ques2_yes = false;
                                  ques2 = 0;
                                }
                              } else if (newValue == false) {
                                ques2 = 0;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              height: getProportionateScreenHeight(330),
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
                      "3. 이러한 일들로 인해서 어느 정도의 문제가 발생했습니까?",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "예시) 금전적 문제, 법적 문제 또는 가족 내의 분란이 생겼다. 말다툼하거나 싸웠다 등...",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "문제 없었다",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Checkbox(
                          activeColor: kPrimaryColor,
                          value: ques3_op1,
                          onChanged: (bool newValue) {
                            setState(() {
                              ques3_op1 = newValue;
                              if (newValue == true) {
                                ques3 = 0;
                                if (ques3_op2 == true || ques3_op3 == true || ques3_op4 == true) {
                                  ques3_op2 = false;
                                  ques3_op3 = false;
                                  ques3_op4 = false;
                                  ques3 = 0;
                                }
                              } else if (newValue == false) {
                                ques3 = 0;
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
                          "경미한 문제",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Checkbox(
                          activeColor: kPrimaryColor,
                          value: ques3_op2,
                          onChanged: (bool newValue) {
                            setState(() {
                              ques3_op2 = newValue;
                              if (newValue == true) {
                                ques3 = 0;
                                if (ques3_op1 == true || ques3_op3 == true || ques3_op4 == true) {
                                  ques3_op1 = false;
                                  ques3_op3 = false;
                                  ques3_op4 = false;
                                  ques3 = 0;
                                }
                              } else if (newValue == false) {
                                ques3 = 0;
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
                          "중등도의 문제",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Checkbox(
                          activeColor: kPrimaryColor,
                          value: ques3_op3,
                          onChanged: (bool newValue) {
                            setState(() {
                              ques3_op3 = newValue;
                              if (newValue == true) {
                                ques3 = 1;
                                if (ques3_op2 == true || ques3_op1 == true || ques3_op4 == true) {
                                  ques3_op2 = false;
                                  ques3_op1 = false;
                                  ques3_op4 = false;
                                  ques3 = 1;
                                }
                              } else if (newValue == false) {
                                ques3 = 0;
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
                          "심각한 문제",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Checkbox(
                          activeColor: kPrimaryColor,
                          value: ques3_op4,
                          onChanged: (bool newValue) {
                            setState(() {
                              ques3_op4 = newValue;
                              if (newValue == true) {
                                ques3 = 1;
                                if (ques3_op2 == true || ques3_op3 == true || ques3_op1 == true) {
                                  ques3_op2 = false;
                                  ques3_op3 = false;
                                  ques3_op1 = false;
                                  ques3 = 1;
                                }
                              } else if (newValue == false) {
                                ques3 = 0;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            DefaultButton(
              text: "제출하기",
              press: () => Navigator.pushNamed(context, "/kmdq_fin"),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}