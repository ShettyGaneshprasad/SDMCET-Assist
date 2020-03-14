import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shubham extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Shubham Kumar', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
              'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/Developer%2Fganeshshetty.jpg?alt=media&token=16a60483-afef-4e2b-a693-89ebfc7e9b4f')
        ],
      ),
    );
  }
}
