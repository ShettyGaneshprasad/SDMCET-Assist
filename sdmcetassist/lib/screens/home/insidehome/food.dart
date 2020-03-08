import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Food', /*style:TextStyle(color:Colors.black)*/
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
             //    Navigator.push(context,
             //        MaterialPageRoute(builder: (context) => suruchi()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.restaurant,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "Suruchi",
                        style: new TextStyle(fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                      fit: FlexFit.tight,
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
               //   Navigator.push(context,
                 //     MaterialPageRoute(builder: (context) => firstYearUg()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.restaurant,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "Santrupti Mess",
                        style: new TextStyle(fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                      fit: FlexFit.tight,
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
               //   Navigator.push(context,
                 //     MaterialPageRoute(builder: (context) => firstYearUg()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.restaurant,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "College Cafeteria",
                        style: new TextStyle(fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                      fit: FlexFit.tight,
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
               //   Navigator.push(context,
                 //     MaterialPageRoute(builder: (context) => firstYearUg()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.restaurant,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "College Bakery",
                        style: new TextStyle(fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                      fit: FlexFit.tight,
                    )
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
