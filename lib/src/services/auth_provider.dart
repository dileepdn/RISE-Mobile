import 'package:flutter/material.dart';
import 'package:rise/src/services/auth_service.dart';


class AuthProvider extends InheritedWidget{
  final AuthService authServic=new AuthService();

    AuthProvider({Key key ,Widget child}) : super(key:key,child:child);

    @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static AuthService of(BuildContext context) => (context.inheritFromWidgetOfExactType(AuthProvider) as AuthProvider).authServic;






}