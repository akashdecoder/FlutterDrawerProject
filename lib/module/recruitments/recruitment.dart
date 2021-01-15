import 'package:Project1/widget/drawer.dart';
import 'package:flutter/material.dart';

class RecruitmentPAge extends StatelessWidget {
  static const String routeName = '/recruitment';
  String _name;
  String _usn;
  String _year;
  String _email;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      // ignore: missing_return
      validator: (String value) {
        if(value.isEmpty) {
          return 'Name is required';
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildUsn() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'USN'),
      // ignore: missing_return
      validator: (String value) {
        if(value.isEmpty) {
          return 'USN is required';
        }
      },
      onSaved: (String value) {
        _usn = value;
      },
    );
  }

  Widget _buildYear() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Year'
      ),
      keyboardType: TextInputType.number,
      // ignore: missing_return
      validator: (String value) {
        if(value.isEmpty) {
          return 'Year is required';
        }
      },
      onSaved: (String value) {
        _year = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      // ignore: missing_return
      validator: (String value) {
        if(value.isEmpty) {
          return 'Email is required';
        }

        if(!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
        ).hasMatch(value)) {
          return 'Please Enter valid Email address';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Recruitments'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(40),
        child: Form(
          key: _formkey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildName(),
            _buildUsn(),
            _buildYear(),
            _buildEmail(),
            SizedBox(height: 100),
            RaisedButton(
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                if(!_formkey.currentState.validate()) {
                  return;
                }

                _formkey.currentState.save();
                print(_name);
              },
            ),
          ],
        ),),
      ),
    );
  }
}