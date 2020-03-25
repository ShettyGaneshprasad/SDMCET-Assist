import 'package:flutter/material.dart';
import 'insideTransport/EveningScreen.dart';
import 'insideTransport/MorningScreen.dart';
import 'insideTransport/AfternoonScreen.dart';

class MainScreenTransport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Transport', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView(
            // crossAxisCount: 3,
            children: <Widget>[
              Card(
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MorningScreen()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "Morning",
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
                      MaterialPageRoute(
                          builder: (context) => AfternoonScreen()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "Afternoon",
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
                      MaterialPageRoute(builder: (context) => EveningScreen()),
                    );
                  },
                  splashColor: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 50.0,
                      ),
                      Flexible(
                        child: Text(
                          "Evening",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                        fit: FlexFit.tight,
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  } //widget build
} // class ends
