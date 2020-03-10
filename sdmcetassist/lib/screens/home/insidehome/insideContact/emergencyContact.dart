import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Text(
            "Emergency contact",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 50,
                decoration: TextDecoration.underline),
          ),
          Text(
            "\nSDMCET",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 0836-2447465",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nPolice",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 100",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nFire",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel://21213123123");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Phone no: 101 / 0836-2442496",
                      style: new TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Text(
            "Phone no: 101 / 0836-2442496",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nAmbulance",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 7900129925",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nE&E Dept.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 7900129925",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nChemical Dept.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 7900129925",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nCivil Dept.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 7900129925",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nDept. of Mathematics",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 7900129925",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nDept. of Chemistry",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 7900129925",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nDept. Physics",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Phone no: 7900129925\n\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
