import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(children: <Widget>[
          Text(
            "Overview",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nSDMCET a premier institute in India accepts admissions through 3 selection processes for all branches of undergraduate courses: Viz. COMMON Entrance TEST(CET), COMEDK and MANAGEMENT quota\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
        ]));
  }
}
