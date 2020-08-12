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
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/firstYearUg.dart';
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
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          // crossAxisCount: 3,
          children: <Widget>[
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => firstYearUg()));
              },
              title: "1st Year UG   ",
              icon: Icons.book,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cse()));
              },
              title: "Computer Science Engineering",
              icon: Icons.computer,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ise()));
              },
              title: "Information Science Engineering",
              icon: Icons.cast,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => EnC()));
              },
              title: "E & C Engineering",
              icon: Icons.router,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => EnE()));
              },
              title: "E & E Engineering",
              icon: Icons.wb_incandescent,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mech()));
              },
              title: "Mechanical Engineering",
              icon: Icons.build,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chemical()));
              },
              title: "Chemical Engineering",
              icon: Icons.format_color_fill,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Civil()));
              },
              title: "Civil Engineering",
              icon: Icons.business,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeptMaths()));
              },
              title: "Department of Maths & Humanities",
              icon: Icons.filter_9_plus,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeptChem()));
              },
              title: "Department of Chemistry",
              icon: Icons.blur_on,
            ),
            buildCard(
              context: context,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DeptPhysics()));
              },
              title: "Department of Physics",
              icon: Icons.explore,
            ),
          ],
        ),
      ),
    );
  }

  Card buildCard(
      {BuildContext context, Function onTap, String title, IconData icon}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.lightBlueAccent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
            ),
            Flexible(
              child: Text(
                title,
                style: new TextStyle(fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
              fit: FlexFit.tight,
            )
          ],
        ),
      ),
    );
  }
}
