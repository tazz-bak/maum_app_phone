import 'package:flutter/material.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';

int Q1TimeHour = 0;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController Q1TimeController = TextEditingController();

  TimeOfDay que1_time;
  TimeOfDay que1_picked;
  TimeOfDay que2_time;
  TimeOfDay que2_picked;

  void initState() {
    super.initState();
    que1_time = TimeOfDay.now();
    que2_time = TimeOfDay.now();
  }

  Future<Null> selectTimeQue1(BuildContext context) async {
    que1_picked = await showTimePicker(
      context: context,
      initialTime: que1_time,
    );
    if (que1_picked != null) {
      setState(() {
        que1_time = que1_picked;
      });
    }
  }

  Future<Null> selectTimeQue2(BuildContext context) async {
    que2_picked = await showTimePicker(
      context: context,
      initialTime: que2_time,
    );
    if (que2_picked != null) {
      setState(() {
        que2_time = que2_picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: double.infinity,
                    height: getProportionateScreenHeight(150),
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
                            "1. 지난 한 달 동안 몇 시에 잠자리에 드셨습니까?",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: getProportionateScreenHeight(50),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[400]),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        side: BorderSide(color: Colors.grey[700]),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    selectTimeQue1(context);
                                  },
                                  child: Text(
                                    "${que1_time.format(context)}",
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: getProportionateScreenWidth(30),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: double.infinity,
                    height: getProportionateScreenHeight(150),
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
                            "3. 지난 한 달 동안 아침에 몇 시에 일어났습니까?",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: getProportionateScreenHeight(50),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[400]),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        side: BorderSide(color: Colors.grey[700]),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    selectTimeQue2(context);
                                  },
                                  child: Text(
                                    "${que2_time.format(context)}",
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: getProportionateScreenWidth(30),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
                text: "제출하기",
                press: () {} //=> Navigator.pushNamed(context, "/kmdq_fin"),
                ),
            SizedBox(height: getProportionateScreenHeight(50)),
            //Spacer(),
          ],
        ),
      ),
    );
  }
}
