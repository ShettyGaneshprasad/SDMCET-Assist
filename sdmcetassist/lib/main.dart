import 'package:provider/provider.dart';
import 'package:sdmcetassist/services/auth.dart';
import 'package:sdmcetassist/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/models/user.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
