import 'package:flutter/material.dart';
import 'package:rise/src/pages/home_page.dart';


void main() => runApp(RiseApp());

class RiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RISE - Learning English',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

