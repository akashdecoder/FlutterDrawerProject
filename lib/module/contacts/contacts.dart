import 'package:Project1/widget/drawer.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  static const String routeName = '/contacts';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      drawer: AppDrawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text('Akash Ranjan Das'),
                  subtitle: Text('akash.ranjan1999@gmail.com'),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text('Aman Jaiswal'),
                  subtitle: Text('jaiswalaman@gmail.com'),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text('Debjit Bhadra'),
                  subtitle: Text('debo@gmail.com'),
                ),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}