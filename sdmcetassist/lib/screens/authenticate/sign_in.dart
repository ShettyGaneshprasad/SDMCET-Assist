import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sdmcetassist/screens/authenticate/authenticate.dart';
import 'package:sdmcetassist/screens/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('sign In to SDMCET ASSIST'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign in Anonymously'),
          onPressed: () async {
            dynamic result = _auth.signInAnon();
            if (result == null) {
              print('Error signing in');
            } else {
              print('Signed in');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
