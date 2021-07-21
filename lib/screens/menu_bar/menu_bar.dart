import 'package:flutter/material.dart';
import 'package:test_1_0_1/screens/new_user/components/profile_form.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "$userName 님",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            accountEmail: Text(
              "immlab@gmail.com",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/userimage.png",
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.green[500],
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("로그아웃",style: TextStyle(
              fontSize: 18,
            ),),
            onTap: () {
              //context.read<AuthService>().signOut();
              //Navigator.pushNamed(context, "/auth_check");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("환경설정",style: TextStyle(
              fontSize: 18,
            ),),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
