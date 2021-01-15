import 'package:Project1/widget/drawer.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = '/events';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      drawer: AppDrawer(),
      body: Center(
          child: Text('Events')
      ),
    );
  }
}