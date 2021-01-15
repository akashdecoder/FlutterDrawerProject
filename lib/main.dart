import 'package:Project1/module/contacts/contacts.dart';
import 'package:Project1/module/events/events.dart';
import 'package:Project1/module/home/home.dart';
import 'module/recruitments/recruitment.dart';
import 'package:Project1/routes/Routes.dart';
import 'package:flutter/material.dart';


void main() => runApp(
  new MaterialApp(
    title: 'Dynamics',
    theme: new ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: HomePage(),
    routes: {
      Routes.contacts: (context) => ContactsPage(),
      Routes.events: (context) => EventsPage(),
      Routes.recruitments: (context) => RecruitmentPAge(),
      Routes.home: (context) => HomePage(),
    },
  ),
);


