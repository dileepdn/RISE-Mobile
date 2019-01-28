import 'package:flutter/material.dart';


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Signup"),
        ),
        body: getSignupPage(context),
      ),
    );
  }
}




/* The Generating functions for body */

Widget getSignupPage(BuildContext context){
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