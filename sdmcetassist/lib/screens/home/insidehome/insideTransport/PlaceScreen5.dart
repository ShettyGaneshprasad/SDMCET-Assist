import 'package:flutter/material.dart';
import 'MDSearch5.dart';
import 'MHSearch5.dart';
import 'ViewEvening.dart';

class PlaceScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Select Place'),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MDSearch5()),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.place,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "Dharwad",
                        style: new TextStyle(fontSize: 25.0),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MHSearch5()),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.place,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "Hubli",
                        style: new TextStyle(fontSize: 25.0),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewEvening()),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.place,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "View all routes",
                        style: new TextStyle(fontSize: 25.0),
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
