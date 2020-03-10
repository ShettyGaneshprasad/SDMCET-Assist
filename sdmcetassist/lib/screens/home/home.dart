import 'package:flutter/material.dart';
import 'package:sdmcetassist/screens/home/insidehome/about.dart';
import 'package:sdmcetassist/screens/home/insidehome/administration.dart';
import 'package:sdmcetassist/screens/home/insidehome/contacts.dart';
import 'package:sdmcetassist/screens/home/insidehome/food.dart';
import 'package:sdmcetassist/screens/home/insidehome/navigation.dart';
import 'package:sdmcetassist/screens/home/insidehome/transport.dart';
import 'package:url_launcher/url_launcher.dart';
import 'insidehome/department.dart';
import 'package:sdmcetassist/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'SDMCET Assist', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      drawer: new Drawer(
        elevation: 100,
        child: ListView(
          children: <Widget>[
            /* UserAccountsDrawerHeader(
              accountName: new Text(
                "acc name",
                style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              accountEmail: new Text("acc email"),
            ),*/
            Container(
              padding: EdgeInsets.all(20.0),
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: ExactAssetImage('assets/madebycse.jpg'),
                fit: BoxFit.fitHeight,
              )),
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text(" College's Official Website"),
              onTap: () {
                launch('https://sdmcet.ac.in');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("College's Youtube channel"),
              onTap: () {
                launch(
                    'https://www.youtube.com/channel/UCYuupsA7tts1Edy0kotGTUg');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Administration()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.collections_bookmark,
                        size: 50.0,
                      ),
                      Text("Admin", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Department()));
                },
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contacts()));
                },
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
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Food()));
                },
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navigation()));
                },
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Transport()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.departure_board,
                        size: 50.0,
                      ),
                      Text("Bus", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),

            /*Container(
              child: PageView(
                children: <Widget>[
                  Text("sedvsfb"),
                  Text("sedvsfb"),
                  Text("sedvsfb"),
                ],
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
