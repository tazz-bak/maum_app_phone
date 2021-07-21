class Question {
  final num ques_num;
  final String question;
  bool option1_sel;
  bool option2_sel;
  bool option3_sel;
  bool option4_sel;
  bool option5_sel;

  Question(this. ques_num, this.question, this.option1_sel, this.option2_sel, this.option3_sel, this.option4_sel, this.option5_sel);
}

List<Question> questions = questionData
    .map((item) => Question(item["ques_num"] ,item["question"], item["option1_sel"], item["option2_sel"], item["option3_sel"], item["option4_sel"], item["option5_sel"]))
    .toList();

var questionData = [
  {"ques_num": 1,"question": "예상치 못한 일이 생겨서 기분 나빠진 적이 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 2,"question": "중요한 일들을 통제할 수 없다고 느낀 적은 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 3,"question": "초조하거나 스트레스가 쌓인다고 느낀 적은 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 4,"question": "짜증나고 성가신 일들을 성공적으로 처리한 적이 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 5,"question": "생활 속에서 일어난 중요한 변화들을 효과적으로 대처한 적이 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 6,"question": "개인적인 문제를 처리하는 능력에 대해 자신감을 느낀 적은 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 7,"question": "자신의 뜻대로 일이 진행된다고 느낀 적은 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 8,"question": "매사를 잘 컨트롤하고 있다고 느낀 적이 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 9,"question": "당신이 통제할 수 없는 범위에서 발생한 일 때문에 화가 난 적이 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
  {"ques_num": 10,"question": "어려운 일이 너무 많이 쌓여서 극복할 수 없다고 느낀 적이 얼마나 있었나요?", "option1_sel": false, "option2_sel": false, "option3_sel": false, "option4_sel": false, "option5_sel": false},
];