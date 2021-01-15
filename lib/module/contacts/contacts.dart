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
      body: Center(
          child: Text('Contacts')
      ),
    );
  }
}