import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/fullscreen_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sdmcetassist/shared/loading.dart';

class firstYearUg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'First Year UG', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TimeTable()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        size: 50.0,
                      ),
                      Text("Time Table", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  //        Navigator.push(context,
                  //              MaterialPageRoute(builder: (context) => Contacts()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.warning,
                        size: 50.0,
                      ),
                      Text("Notice", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//start of class timmetable
class TimeTable extends StatefulWidget {
  _TimeTable createState() => new _TimeTable();
}

class _TimeTable extends State<TimeTable> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
      Firestore.instance.collection("FirstYearTimeTable");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.documents;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'First Year UG', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.blue[300],
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(9.0),
                crossAxisCount: 1,
                itemCount: timeTable.length,
                itemBuilder: (context, i) {
                  String imgPath = timeTable[i].data['url'];
                  return new Material(
                      elevation: 10.0,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      child: new InkWell(
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new FullScreenImagePage(imgPath))),
                        child: Hero(
                          tag: imgPath,
                          child: new FadeInImage(
                            placeholder: new AssetImage("assets/sdmlogo.jpg"),
                            image: new NetworkImage(imgPath),
                          ),
                        ),
                      ));
                },
                staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              )
            : new Loading());
  }
}
//end of class time Table
