import 'package:Project1/widget/drawer.dart';
import 'package:flutter/material.dart';

class RecruitmentPAge extends StatelessWidget {
  static const String routeName = '/recruitment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recruitments'),
      ),
      drawer: AppDrawer(),
      body: Center(
          child: Text('Recruitments')
      ),
    );
  }
}