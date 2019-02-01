import 'package:flutter/material.dart';
import 'package:rise/src/services/auth_service.dart';

class UserProfile extends StatefulWidget {
  final AuthService auth;

  UserProfile({this.auth});

  @override
  UserProfileState createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.auth.user,
      builder: (context, snapshot) {
        return Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text("${snapshot.data.toString()} <<<<<"),
            ),
            // Text(
            //   _loading.toString(),
            // ),
          ],
        );
      },
    );
  }
}
