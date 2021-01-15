import 'package:Project1/routes/Routes.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.event, text: 'Events', onTap: () =>
              Navigator.pushReplacementNamed(context, Routes.events)),
          _createDrawerItem(icon: Icons.supervised_user_circle, text: 'Recruitments', onTap:
              () =>
              Navigator.pushReplacementNamed(context, Routes.recruitments)),
          Divider(),
          _createDrawerItem(icon: Icons.contacts, text: 'Contacts', onTap: ()
          => Navigator.pushReplacementNamed(context, Routes.contacts)),
          Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),

        ],
      ),
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    // decoration: BoxDecoration(
    //   image: DecorationImage(
    //       fit: BoxFit.fill,
    //       image: AssetImage('D:/security.jpg')
    //   ),
    // ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text('Dynamics',style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w500
          ),
          ),
        ),
      ],
    ),
  );
}

Widget _createDrawerItem({IconData icon, String text, GestureTapCallback
onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
