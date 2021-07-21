class testCategory {
  final String name;
  final String image;
  final String route;
  bool selected;

  testCategory(this.name, this.image, this.route, this.selected);
}

List<testCategory> testCategories = categoryData
    .map((item) => testCategory(item["name"], item["image"], item["route"], item["selected"]))
    .toList();

var categoryData = [
  {"name": "BAI 검사", "image": "assets/images/counselor.png", "route": "/bai_detail", "selected": false},
  {"name": "K-MDQ 검사", "image": "assets/images/sitting girl.png", "route": "/kmdq_detail", "selected": false},
  {"name": "PHQ 검사", "image": "assets/images/lonely.png", "route": "/phq_detail", "selected": false},
  {"name": "PSS 검사", "image": "assets/images/stress.png", "route": "/pss_detail", "selected": false},
  {"name": "PSQI 검사", "image": "assets/images/insomnia.png", "route": "/psqi_detail", "selected": false},
  {"name": "IDS-SR 검사", "image": "assets/images/insomnia2.png", "route": "/ids_detail", "selected": false},
];