import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_1_0_1/components/constants.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/home/components/test_category.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          Text(
            "반갑습니다",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(35),
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(3)),
          Text(
            "당신에게 필요한 검사를 시작해보세요",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(17),
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            height: getProportionateScreenHeight(50),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F7),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/search.svg"),
                Text(
                  " 검색해보세요",
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(15),
                    color: Color(0xFFA0A5BD),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "심리검사 목록",
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: getProportionateScreenWidth(20),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "모두보기",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          Expanded(
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              crossAxisCount: 2,
              itemCount: testCategories.length,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              itemBuilder: (context, index) {
                if (testCategories[index].selected == true) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, testCategories[index].route),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: getProportionateScreenHeight(200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.brown[50],
                        image: DecorationImage(
                          image: AssetImage(testCategories[index].image),
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            testCategories[index].name,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
          ),
        ],
      ),
    );
  }
}
