import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});
  static const IconData login = IconData(0xe3b2, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    currentAccountPicture: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/login_image.png")),
                    accountName: Text("Manan Bhatt"),
                    accountEmail: Text("mananbhatt2651@gmail.com"))),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
                  textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                  textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email Me",
                  textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
              leading: Icon(
                login,
                color: Colors.white,
              ),
              title: Text("Login",
                  textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
