import 'package:flutter/material.dart';




class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: getLoginPage(context),
      ),
    );
  }
}



/* The Generating functions for body */

Widget getLoginPage(BuildContext context){
  return Center(
    child: Column(
      children: <Widget>[
        RaisedButton(
          onPressed: (){
            print('pressed!');
          },
          child: Text('Login with Google'),
          textColor: Colors.white,
          color: Colors.deepOrangeAccent,
        ),
      ],
    ),
  );
}