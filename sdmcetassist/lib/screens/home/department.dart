import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/services/auth.dart';

class Department extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'SDMCET Assist', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.blue[300],
          elevation: 10.0,
          actions: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                //await _auth.signOut();
              },
              icon: Icon(
                Icons.person,
                color: Colors.redAccent,
              ),
              label: Text(
                'Logout',
                style: TextStyle(color: Colors.redAccent),
              ),
            )
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: new Text(
                  "acc name",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                accountEmail: new Text("acc email"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              )
            ],
          ),
        ));
  }
}
