import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Authenticate'),
    );
  }
}
