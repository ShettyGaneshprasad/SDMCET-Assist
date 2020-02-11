import 'package:flutter/material.dart';
import 'package:sdmcetassist/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('SDMCET Assist'),
        backgroundColor: Colors.blue[400],
        elevation: 10.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
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
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              accountEmail: new Text("acc email"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),
                      Text("About", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.collections_bookmark,
                        size: 50.0,
                      ),
                      Text("Administration",
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.school,
                        size: 50.0,
                      ),
                      Text("Academics", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.contact_phone,
                        size: 50.0,
                      ),
                      Text("Contacts", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.restaurant,
                        //color: Colors.amberAccent,
                        size: 50.0,
                      ),
                      Text("Food", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.add_location,
                        size: 50.0,
                      ),
                      Text("Navigation", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.departure_board,
                        size: 50.0,
                      ),
                      Text("Bus Transport",
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.import_contacts,
                        size: 50.0,
                      ),
                      Text("Department", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.collections_bookmark,
                        size: 50.0,
                      ),
                      Text("Administration",
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    return scaffold;
  }
}
