import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/chem.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/civil.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/cse.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/deptPhysics.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/deptchem.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/deptmaths.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/ee.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/enc.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/ise.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/mech.dart';

class Department extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Department', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          // crossAxisCount: 3,
          children: <Widget>[
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cse()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.computer,
                      size: 50.0,
                    ),
                    Text("Computer Science and Engineering",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Ise()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.cast,
                      size: 50.0,
                    ),
                    Text("Information Science and Engineering",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => EnC()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.router,
                      size: 50.0,
                    ),
                    Text("           E&C Engineering",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => EnE()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.wb_incandescent,
                      size: 50.0,
                    ),
                    Text("           E&E Engneering",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Mech()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.build,
                      //color: Colors.amberAccent,
                      size: 50.0,
                    ),
                    Text("           Mechanical Engineering",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chemical()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.format_color_fill,
                      size: 50.0,
                    ),
                    Text(
                      "           Chemical Engineering",
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontSize: 25.0),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Civil()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.business,
                      size: 50.0,
                    ),
                    Text("           Civil Engineering",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DeptMaths()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.filter_9_plus,
                      size: 50.0,
                    ),
                    Text("         Department of Mathematics",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DeptChem()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.blur_on,
                      size: 50.0,
                    ),
                    Text("         Department of Chemistry",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DeptPhysics()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.explore,
                      size: 50.0,
                    ),
                    Text("         Department of Physics",
                        style: new TextStyle(fontSize: 25.0))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
