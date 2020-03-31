import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class View extends StatelessWidget {
  const View({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Information Science Department', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      'https://drive.google.com/file/d/1tRtH-cPvVpKNej5zAQEz6A-O-L2KCqyg/view');
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
