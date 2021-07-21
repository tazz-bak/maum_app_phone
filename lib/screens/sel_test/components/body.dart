import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test_1_0_1/components/default_button.dart';
import 'package:test_1_0_1/components/size_config.dart';
import 'package:test_1_0_1/screens/home/components/test_category.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(5)),
            Text(
              '진행할 검사를 선택해주세요',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                color: Colors.grey[800],
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Container(
              height: SizeConfig.screenHeight * 0.65,
              child: SingleChildScrollView(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  crossAxisCount: 2,
                  itemCount: testCategories.length,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      setState(() {
                        if (testCategories[index].selected == true) {
                          testCategories[index].selected = false;
                        } else {
                          testCategories[index].selected = true;
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: getProportionateScreenHeight(150),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: testCategories[index].selected ? Colors.brown[100]: Colors.brown[50],
                        image: DecorationImage(
                          image: AssetImage(testCategories[index].image),
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.bottomCenter,
                          scale: 10,//getProportionateScreenHeight(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            testCategories[index].name,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
            ),
            Spacer(),
            DefaultButton(
              text: "계속하기",
              press: () => Navigator.pushNamed(context, "/splash"),
            ),
            Spacer(),
            //NoAccountText(),
          ],
        ),
      ),
    );
  }
}
