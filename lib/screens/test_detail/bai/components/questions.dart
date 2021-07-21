class Question {
  final num ques_num;
  final String question;
  bool option1_sel;
  bool option2_sel;
  bool option3_sel;
  bool option4_sel;
  num result;

  Question(this. ques_num, this.question, this.option1_sel, this.option2_sel, this.option3_sel, this.option4_sel, this.result);
}

List<Question> questions = questionData
  .map((item) => Question(item["ques_num"] ,item["question"], item["option1_sel"], item["option2_sel"], item["option3_sel"], item["option4_sel"], item["result"]))
  .toList();

var questionData = [
  {"ques_num": 1,"question": "가끔씩 몸이 저리고 쑤시며 감각이 마비된 느낌을 받는다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 2,"question": "흥분된 느낌을 받는다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 3,"question": "가끔씩 다리가 떨리곤 한다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 4,"question": "편안하게 쉴 수가 없다. ", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 5,"question": "매우 나쁜 일이 일어날 것 같은 두려움을 느낀다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 6,"question": "어지러움(현기증)을 느낀다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 7,"question": "가끔씩 심장이 두근거리고 빨리 뛴다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 8,"question": "침착하지 못하다. ", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 9,"question": "자주 겁을 먹고 무서움을 느낀다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 10,"question": "신경이 과민 되어 있다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false},
  {"ques_num": 11,"question": "가끔씩 숨이 막히고 질식할 것 같다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 12,"question": "자주 손이 떨린다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 13,"question": "안절부절못해 한다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 14,"question": "미칠 것 같은 두려움을 느낀다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 15,"question": "가끔씩 숨쉬기 곤란할 때가 있다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 16,"question": "죽을 것 같은 두려움을 느낀다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 17,"question": "불안한 상태에 있다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 18,"question": "자주 소화가 잘 안되고 뱃속이 불편하다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 19,"question": "가끔씩 기절할 것 같다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 20,"question": "자주 얼굴이 붉어지곤 한다.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 21,"question": "땀을 많이 흘린다. (더위로 인한 경우는 제외)", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
];

