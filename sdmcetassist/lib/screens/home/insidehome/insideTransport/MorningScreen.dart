import 'package:flutter/material.dart';
import 'PlaceScreen8.dart';
import 'PlaceScreen9.dart';

class MorningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Morning session'),
        backgroundColor: Colors.blue[300],
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
                    MaterialPageRoute(builder: (context) => PlaceScreen8()),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "8 clock",
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
                    MaterialPageRoute(builder: (context) => PlaceScreen9()),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      size: 50.0,
                    ),
                    Flexible(
                      child: Text(
                        "9 clock",
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
