import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: getHomePage(context),
    );
  }
}

/* The Generating functions for body */

Widget getHomePage(BuildContext context) {
  return Center(
    child: Column(
      children: <Widget>[
        RaisedButton(
          onPressed: (){
            Navigator.of(context).pushNamed('/login_page');
          },
          child: Text('Login'),
          textColor: Colors.white,
          color: Colors.blue,
          elevation: 3.0,
        ),
        RaisedButton(
          onPressed: (){
            Navigator.of(context).pushNamed('/signup_page');
          },
          child: Text('Signup'),
          textColor: Colors.white,
          color: Colors.red,
        ),
      ],
    ),
  );
}
