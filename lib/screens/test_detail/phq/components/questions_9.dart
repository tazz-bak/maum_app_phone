class Question9 {
  final num ques_num;
  final String question;
  bool option1_sel;
  bool option2_sel;
  bool option3_sel;
  bool option4_sel;
  num result;

  Question9(this. ques_num, this.question, this.option1_sel, this.option2_sel, this.option3_sel, this.option4_sel, this.result);
}

List<Question9> questions_9 = questionData
    .map((item) => Question9(item["ques_num"] ,item["question"], item["option1_sel"], item["option2_sel"], item["option3_sel"], item["option4_sel"], item["result"]))
    .toList();

var questionData = [
  {"ques_num": 1,"question": "일을 하는 것에 대한 흥미나 재미가 거의 없음.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 2,"question": "가라앉은 느낌, 우울감 혹은 절망감.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 3,"question": "잠들기 어렵거나 자꾸 깨어남, 혹은 너무 많이 잠.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 4,"question": "피곤감, 기력이 저하됨.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 5,"question": "식욕 저하 혹은 과식.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 6,"question": "내 자신이 나쁜 사람이라는 느낌 혹은 내 자신을 실패자라고 느끼거나 나 때문에 나 자신이나 내 가족이 불행하게 되었다는 느낌.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 7,"question": "신문을 읽거나 TV를 볼 때 집중하기 어려움.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 8,"question": "남들이 알아챌 정도로 거동이나 말이 느림 또는 반대로 너무 초조하고 안절부절 못해서 평소보다 많이 돌아다니고 서성거림.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
  {"ques_num": 9,"question": "나는 차라리 죽는 것이 낫겠다는 등의 생각 혹은 어떤 면에서건 당신 스스로에게 상처를 주는 생각들.", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "result": 0},
];

