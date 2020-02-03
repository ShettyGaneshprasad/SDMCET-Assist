import 'package:sdmcetassist/screens/wrapper.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: wrapper(),
    );
  }
}
