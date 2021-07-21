class Question {
  final num ques_num;
  final String question;
  final String opt1;
  final String opt2;
  final String opt3;
  final String opt4;
  bool opt1_sel;
  bool opt2_sel;
  bool opt3_sel;
  bool opt4_sel;

  Question(this. ques_num, this.question, this.opt1, this.opt2, this.opt3, this.opt4, this.opt1_sel, this.opt2_sel, this.opt3_sel, this.opt4_sel);
}

List<Question> questions = questionData
    .map((item) => Question(item["ques_num"], item["question"], item["opt1"], item["opt2"], item["opt3"], item["opt4"], item["opt1_sel"], item["opt2_sel"], item["opt3_sel"], item["opt4_sel"]))
    .toList();

var questionData = [
  {"ques_num": 1, "question": "잠들기 (수면 초기)", "opt1": "(일주일 내내) 30분 안에 잠들었다", "opt2": "잠드는 데 30분 이상 걸리는 날이 일주일 중 절반 이하이다", "opt3": "잠드는 데 30분 이상 걸리는 날이 일주일 중 절반 이상이다", "opt4": "잠드는 데 1시간 이상 걸리는 날이 일주일 중 절반 이상이다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 2, "question": "잠자는 동안에 깸 (밤잠, 수면 중기)", "opt1": "밤에 깨는 일 없이 잠을 잘 잔다", "opt2": "매일밤 잠깐씩 잠을 깨며, 불안정한 선잠을 잔다", "opt3": "밤에 적어도 한번은 깨지만 곧바로 잠이 든다", "opt4": "밤에 한 번 이상 깨며, 다시 잠드는 데 20분 이상 걸리는 날이 일주일 중 4일 이상이다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 3, "question": "너무 일찍 깸 (새벽잠, 수면 후기)", "opt1": "평소 기상 시각보다 30분 전에 잠을 깬 적이 없다", "opt2": "평소 기상 시각보다 30분 이상 일찍 잠을 깬 날이 일주일 중 절반 이상이다", "opt3": "평소 기상 시각보다 적어도 1시간 이상 일찍 잠을 깨지만 다시 잠이 든다", "opt4": "평소 기상 시각보다 적어도 1시간 이상 일찍 잠을 깬 후 다시 잠들지 못한다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 4, "question": "지나친 수면", "opt1": "낮잠을 자지 않고 밤에 7-8시간 이하로 잔다", "opt2": "낮잠을 포함하여 하루에 10시간쯤 잔다", "opt3": "낮잠을 포함하여 하루에 12시간쯤 잔다", "opt4": "낮잠을 포함하여 하루에 12시간 넘게 잔다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 5, "question": "슬픈 느낌", "opt1": "슬프지 않다", "opt2": "슬픈 날이 일주일 중 절반 이하이다", "opt3": "슬픈 날이 일주일 중 절반 이상이다", "opt4": "항상 슬프다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 6, "question": "짜증", "opt1": "짜증이 나지 않는다", "opt2": "짜증나는 날이 일주일 중 절반 이하이다", "opt3": "짜증나는 날이 일주일 중 절반 이상이다", "opt4": "항상 짜증이 심하게 난다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 7, "question": "불안감 또는 긴장감", "opt1": "불안해하거나 긴장하지 않는다", "opt2": "불안해하거나 긴장하는 날이 일주일 중 절반 이하이다", "opt3": "불안해하거나 긴장하는 날이 일주일 중 절반 이상이다", "opt4": "항상 극도로 불안해하거나 긴장한다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 8, "question": "좋은 일 또는 바라던 일에 대한 당신의 반응", "opt1": "좋은 일이 생기면 평소처럼 기분이 좋아지고, 그 기분이 몇 시간 지속된다", "opt2": "좋은 일이 생기면 기분이 좋아지기는 하지만 평소 같지는 않다", "opt3": "바라던 일이 이루어져도 기분이 조금 좋아질 뿐이다", "opt4": "아주 좋은 일이나 간절히 바라던 일이 이루어져도 전혀 기분이 좋아지지 않는다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 9, "question": "하루 중의 주기와 기분의 연관성", "opt1": "하루 중의 주기와 기분 사이에 특별한 연관성이 없다", "opt2": "기분이 주변 상황 (예: 혼자 있을 때, 일을 할 때)에 따라 변한다", "opt3": "주변 상황보다는 하루 중의 주기 (예: 밤 혹은 오전, 오후)에 따라 기분이 변한다", "opt4": "매일 특정한 시간이 되면 기분이 좋아지거나 나빠지는 것을 분명하게 예상할 수 있다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 10, "question": "기분의 종류", "opt1": "평소와 같은 매우 일반적인 기분이다", "opt2": "슬프다. 그런데 이 슬픔은 가깝게 지내던 사람이 죽거나 멀리 떠났을 때 느끼는 슬픔과 매우 비슷하다", "opt3": "슬프다. 그런데 이 슬픔은 가깝게 지내던 사람이 죽거나 멀리 떠났을 때 느끼는 슬픔과는 조금 다르다", "opt4": "슬프다. 그런데 이 슬픔은 가깝게 지내던 사람이 죽거나 멀리 떠났을 때 느끼는 슬픔과는 전혀 다르다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 11, "question": "식욕 저하", "opt1": "평소 식욕과 다름없다", "opt2": "평소보다 먹는 횟수나 양이 조금 줄었다", "opt3": "평소보다 먹는 양이 훨씬 줄었으며, 노력해야만 먹을 정도로 식욕이 없다", "opt4": "식욕이 없어 하루 종일 거의 아무 것도 먹지 못하고, 주변에서 권유하거나 스스로 많은 노력을 해야만 먹을 정도이다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 12, "question": "식욕 증가", "opt1": "평소와 식욕과 다름없다", "opt2": "평소보다 자주 먹고 싶다", "opt3": "평소보다 훨씬 자주 먹거나 먹는 양이 더 많다", "opt4": "식사나 간식 때마다 나도 모르게 과식을 하게 된다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 13, "question": "체중 감소 (지난 2주간)", "opt1": "체중 변화가 없다", "opt2": "1kg 미만으로 체중이 준 것 같다", "opt3": "1kg 이상 체중이 줄었다", "opt4": "2kg 이상 체중이 줄었다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 14, "question": "체중 증가 (지난 2주간)", "opt1": "체중 변화가 없다", "opt2": "1kg 미만으로 체중이 는 것 같다", "opt3": "1kg 이상 체중이 늘었다", "opt4": "2kg 이상 체중이 늘었다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 15, "question": "집중력과 결단력", "opt1": "집중력과 결단력은 평소와 같다", "opt2": "가끔씩 우유부단하게 행동하고 집중력이 떨어지는 것 같다", "opt3": "매 순간 결정을 내리거나 집중하는 것이 어렵다", "opt4": "책을 읽지 못할 만큼 집중이 안 되며, 사소한 결정조차 내릴 수 없다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 16, "question": "자신에 대한 생각", "opt1": "나는 다른 사람들처럼 가치 있는 사람이라고 생각한다", "opt2": "나는 평소보다 더 많이 자책한다", "opt3": "내 잘못으로 다른 사람들이 피해를 입는다는 생각이 든다", "opt4": "나의 크고 작은 단점들을 끊임없이 생각하고 자책한다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 17, "question": "자신의 미래에 대한 생각", "opt1": "나의 미래는 밝다고 생각한다", "opt2": "대부분은 좋아질 것으로 믿고 있지만 가끔 나의 미래를 비관적으로 생각한다", "opt3": "가까운 미래(1~2개월)에는 좋은 일이 생기지 않을 것 같다", "opt4": "내 인생에서 좋은 일은 생기지 않을 것이고, 그런 희망도 없다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 18, "question": "죽음 혹은 자살에 대한 생각", "opt1": "평소에 자살이나 죽음을 생각하지 않는다", "opt2": "과연 인생이 살 가치가 있을까 하는 생각에 삶이 공허하다고 여긴다", "opt3": "일주일에 여러 번 자살이나 죽음을 생각한다", "opt4": "하루에도 여러 번 죽음이나 자살을 생각하거나, 자살의 구체적인 계획을 세운 적이 있다. 또는 자살을 시도한 적이 있다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 19, "question": "일상적인 관심", "opt1": "평소처럼 일상활동을 하며 주위 사람들에게 관심을 둔다", "opt2": "평소보다 일상활동이 줄어들었고 주위 사람들에게도 관심을 덜 둔다", "opt3": "이전부터 해오던 활동들 중 한두 가지에만 관심을 둘 뿐이다", "opt4": "이전부터 해오던 활동에 전혀 관심이 없다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 20, "question": "활기찬 정도", "opt1": "평소처럼 활기차다", "opt2": "평소보다 쉽게 피곤해진다", "opt3": "일상생활(예: 쇼핑, 숙제, 요리 등)을 시작하고 마치는 데에 많이 노력해야 할 정도로 어려움을 느낀다", "opt4": "기운이 없어서 대부분의 일상생활을 도저히 할 수가 없다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 21, "question": "기쁨 또는 즐거움의 정도 (성생활 제외)", "opt1": "유쾌한 활동으로 얻는 즐거움은 평소와 같다", "opt2": "유쾌한 활동으로 얻는 즐거움이 평소와 같지 않다", "opt3": "어떤 활동을 해도 좀처럼 즐거움을 느끼지 못한다", "opt4": "어떤 일에도 기쁨이나 즐거움을 전혀 느낄 수 없다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 22, "question": "성에 대한 흥미 (성행위가 아니라 성적인 흥미의 정도를 의미)", "opt1": "성에 대한 흥미가 평소와 같다", "opt2": "성에 대한 흥미가 평소보다 줄었거나, 성행위로 얻는 쾌감도 예전 같지 않다", "opt3": "성에 대한 흥미가 거의 없고, 성행위로 얻는 쾌감도 좀처럼 느끼지 못한다", "opt4": "성에 대한 흥미가 전혀 없으며 성행위로 얻는 쾌감도 전혀 없다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 23, "question": "생각이나 말과 행동이 느려지는 느낌", "opt1": "생각하고 말하고 움직이는 속도가 평소와 다름없다", "opt2": "생각하는 것이 느려졌으며, 말은 둔해지고 단조로워졌다", "opt3": "답변하는 데 시간이 더 걸리며, 생각하는 것도 느려졌다는 것을 분명히 느낀다", "opt4": "많은 노력을 들여야지만 겨우 답변을 하는 경우가 자주 있다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 24, "question": "초조함", "opt1": "초조하지 않다", "opt2": "초조해서 앉아 있을 때에는 손을 꼼지락거리거나 다리를 비틀어야 한다", "opt3": "많이 초조해서 여기저기 돌아다니거나 움직이고 싶은 충동을 느낀다", "opt4": "너무 초조해서 도저히 한곳에 앉아 있을 수가 없어 여기저기를 돌아다닌다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 25, "question": "아픔과 고통", "opt1": "팔다리가 무겁게 느껴진다거나 특별히 아픈 곳이 없다", "opt2": "때때로 두통, 복통, 요통, 관절통 등이 있긴 하지만, 아파서 해야 할 일을 못할 정도는 아니다", "opt3": "거의 항상 두통, 복통, 요통, 관절통 등이 있다", "opt4": "두통, 복통, 요통, 관절통 등이 심해서 내가 하고 있는 일을 중단해야 할 정도이다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 26, "question": "다른 신체 증상 (가슴이 두근거림, 어질어질함, 시야가 흐려짐, 식은땀이 남, 오한을 느낌, 가슴이 뒤틀리거나 아픔, 귀에서 윙윙거리는 소리가 들림, 몸이 떨림)", "opt1": "위의 증상을 경험한 적이 없다", "opt2": "위의 증상 중 일부를 가끔 경험하지만 그 증상은 가볍다", "opt3": "위의 증상 중 많은 것들을 경험하며 그 증상은 매우 심하다", "opt4": "위에 나열된 것과 같은 신체 증상들이 너무 심해서 내가 하고 있는 일을 중단해야 할 정도이다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 27, "question": "공황/공포 증상 (공황=갑작스럽게 느끼는 심한 불안)", "opt1": "공황 상태나 특정 공포 증상(동물이나 높은 곳에 대한 공포증상)이 없다", "opt2": "가벼운 공황 상태나 공포 증상을 경험하지만, 그것 때문에 행동까지 변화되진 않고 일상생활에도 지장이 없다", "opt3": "심한 공황 상태나 공포 증상으로 행동의 변화가 있지만 일상생활에 지장은 없다", "opt4": "공황 상태를 최소한 일주일에 한 번 이상 경험한다. 또는 심각한 공포 증상으로 일상생활이 불가능하다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 28, "question": "변비/설사", "opt1": "배변 활동은 평소와 다름없다", "opt2": "가벼운 변비나 설사가 가끔 있다", "opt3": "항상 변비나 설사가 있지만, 일상생활에 지장이 있는 정도는 아니다", "opt4": "변비나 설사 때문에 약을 먹고 있으며, 그 때문에 일상생활에도 지장이 있다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 29, "question": "대인관계", "opt1": "다른 사람에게서 거절, 모욕, 비난 또는 상처를 쉽게 받지 않는다", "opt2": "다른 사람에게서 거절, 모욕, 비난 또는 상처를 가끔 받는다", "opt3": "다른 사람에게서 거절, 모욕, 비난 또는 상처를 자주 받지만 대인 관계나 일에는 별로 지장이 없다", "opt4": "다른 사람에게서 거절, 모욕, 비난 또는 상처를 자주 받으며, 그 때문에 대인 관계나 일에 지장이 있다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
  {"ques_num": 30, "question": "무기력함/활력", "opt1": "몸이 가볍고 활력이 있다", "opt2": "때때로 몸이 무겁게 처지고 활력이 없기도 하지만, 일상생활에 지장을 주지는 않는다", "opt3": "몸이 무겁게 처지고 활력이 없는 날이 일주일 중 절반 이상이다", "opt4": "항상 몸이 무겁게 처지고 활력이 없다", "opt1_sel": false, "opt2_sel": false, "opt3_sel": false, "opt4_sel": false},
];