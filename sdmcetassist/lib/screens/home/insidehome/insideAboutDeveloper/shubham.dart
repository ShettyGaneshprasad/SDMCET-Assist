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
              'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/Developer%2Fshubham.jpg?alt=media&token=1fee331f-3279-4385-ac4b-9f206efd9fff')
        ],
      ),
    );
  }
}
