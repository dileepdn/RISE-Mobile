import 'package:flutter/material.dart';

import 'package:rise/src/pages/homepage/home_page.dart';
import 'package:rise/src/pages/login/login.dart';
import 'package:rise/src/pages/signup/signup.dart';


void main() => runApp(RiseApp());

class RiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RISE - Learning English',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder> { 
        '/login_page': (BuildContext context) => new LoginPage(),
        '/signup_page' : (BuildContext context) => new SignUpPage()
      },
    );
  }
}

