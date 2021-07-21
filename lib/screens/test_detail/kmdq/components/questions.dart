class Question {
  final num ques_num;
  final String question;
  bool yes_sel;
  bool no_sel;

  Question(this.ques_num, this.question, this.yes_sel, this.no_sel);
}

List<Question> questions = questionData
    .map((item) => Question(item["ques_num"],item["question"], item["yes_sel"], item["no_sel"]))
    .toList();

var questionData = [
  //1. 다음처럼 당신은 평소의 자신과는 달랐던 적이 과거(예전)에 있었습니까?
  {"ques_num": 1,"question": "기분이 너무 좋거나 들떠서 다른 사람들이 평소의 당신 모습이 아니라고 한 적이 있었다. 또는 너무 들떠서 문제가 생긴 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 2,"question": "지나치게 흥분하여 사람들에게 소리를 지르거나 싸우거나 말다툼을 한 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 3,"question": "평소보다 더욱 자신감에 찬 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 4,"question": "평소보다 더욱 잠을 덜 잤거나 또는 잠잘 필요를 느끼지 않은 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 5,"question": "평소보다 말이 더 많았거나 말이 매우 빨라졌던 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 6,"question": "생각이 머릿속에서 빠르게 돌아가는 것처럼 느꼈거나 마음을 차분하게 하지 못한 적이 있다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 7,"question": "주위에서 벌어지는 일로 쉽게 방해 받았기 때문에, 하던 일에 집중하기 어려웠거나 할 일을 계속하지 못한 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 8,"question": "평소보다 더욱 에너지가 넘쳤던 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 9,"question": "평소보다 더욱 활동적이었거나 더 많은 일을 하였던 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 10,"question": "평소보다 더욱 사교적이거나 적극적(외향적)이었던 적이 있었다. (하나의 예를 들면, 한밤중에 친구들에게 전화를 했다.)", "yes_sel": false, "no_sel": false},
  {"ques_num": 11,"question": "평소보다 더욱 성행위에 관심이 간 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 12,"question": "평소의 당신과는 맞지 않는 행동을 했거나, 남들이 생각하기에 지나치거나 바보 같거나 또는 위험한 행동을 한 적이 있었다.", "yes_sel": false, "no_sel": false},
  {"ques_num": 13,"question": "돈쓰는 문제로 자신이나 가족을 곤경에 빠뜨린 적이 있었다.", "yes_sel": false, "no_sel": false},
  //2. 만약 위의 질문 중에서 하나 이상 예라고 했다면, 그 중 몇 가지는 같은 시기에 벌어진 것입니까?
  //3. 이러한 일들로 인해서 어느 정도의 문제가 발생했습니까?
  //예를 들어 일할 수 없었다: 금전적 문제, 법적 문제 또는 가족 내에 분란이 생겼다: 말다툼하거나 싸웠다 등.. (다음 중 하나만 표시하십시오.)
  //문제 없었다. 경미한 문제. 중등도의 문제. 심각한 문제.
];