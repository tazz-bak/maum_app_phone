class Question15 {
  final num ques_num;
  final String question;
  bool option1_sel;
  bool option2_sel;
  bool option3_sel;
  num result;

  Question15(this. ques_num, this.question, this.option1_sel, this.option2_sel, this.option3_sel, this.result);
}

List<Question15> questions_15 = questionData
    .map((item) => Question15(item["ques_num"] ,item["question"], item["option1_sel"], item["option2_sel"], item["option3_sel"], item["result"]))
    .toList();

var questionData = [
  {"ques_num": 1,"question": "위통", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 2,"question": "허리 통증", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 3,"question": "팔, 다리, 관절 (무릎, 고관절 등)의 통증", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 4,"question": "[여성만 해당] 생리기간 동안 생리통 등의 문제", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 5,"question": "두통", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 6,"question": "가슴 통증, 흉통", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 7,"question": "어지러움", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 8,"question": "기절할 것 같음", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 9,"question": "심장이 빨리 뜀", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 10,"question": "숨이 참", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 11,"question": "성교 중 통증 등의 문제", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 12,"question": "변비, 묽은 변이나 설사", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 13,"question": "메슥거림, 방귀, 소화불량", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 14,"question": "피로감, 기운 없음", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
  {"ques_num": 15,"question": "수면의 어려움", "option1_sel": false, "option2_sel": false, "option3_sel": false, "result": 0},
];

