import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const profileimageurl="https://images.newscientist.com/wp-content/uploads/2022/04/06095721/SEI_97255809.jpg?crop=4:3,smart&width=1200&height=900&upscale=true";
    return Drawer(
      child: Container(
        color: Colors.lightGreen,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Ritesh Asutkar"),
                accountEmail: Text("asutkarritesh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(profileimageurl),
                ),
              )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.gear, //can use settings or settings_solid
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
