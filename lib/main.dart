import 'package:flutter/material.dart';
import 'package:rise/src/services/auth_service.dart';
import 'userprofile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'FlutterBase',
    //   home: Scaffold(
    //       key: _scaffoldkey,
    //       appBar: AppBar(
    //         title: Text('Flutterbase'),
    //         backgroundColor: Colors.amber,
    //       ),
    //       body: Column(
    //         children: <Widget>[
    //           SignupPage(),
    //           LoginButton(),
    //           UserProfile()
    //         ],
    //       ),),
    // );

    return MaterialApp(
      title: "Flutter Rise App",
      home: SignupPage(),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: authService.user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MaterialButton(
              onPressed: () => authService.signOut(),
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Signout'),
            );
          } else {
            return MaterialButton(
              onPressed: () => authService.googleSignIn(),
              color: Colors.white,
              textColor: Colors.black,
              child: Text('Login with Google'),
            );
          }
        });
  }
}


class SignupPage extends StatefulWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _email;
  String _password;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                }),
            SizedBox(height: 15.0),
            TextField(
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                }),
            SizedBox(height: 20.0),
            RaisedButton(
                child: Text('Login'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: () {
                  print("$_email :: $_password");
                  String use;
                  authService.normalSignIn(_email, _password).then((msg){
                    _showsnakbar(msg);
                  });
                },
            ),

            // StreamBuilder(
            //   stream: authService.profile,
            //   builder: (context, snapshot) {
            //     return Column(
            //       children: <Widget>[
            //         Container(
            //           padding: EdgeInsets.all(20),
            //           child: Text(snapshot.data.toString()),
            //         ),
            //         // Text(
            //         //   authService.loading.listen((onData)=>onData),
            //         // ),
            //       ],
            //     );
            //   },
            // ),
            UserProfile(auth: authService,),
            LoginButton(),
          ],
        ),
      ),
    );
  }

  _showsnakbar(String msg) {
    var snackBar = SnackBar(content: Text(msg));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
