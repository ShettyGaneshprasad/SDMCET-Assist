import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/fullscreen_image.dart';
import 'package:sdmcetassist/shared/loading.dart';
import 'package:url_launcher/url_launcher.dart';

class Ise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Information Science Department', /*style:TextStyle(color:Colors.black)*/
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
                      MaterialPageRoute(builder: (context) => IseAboutp1()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),
                      Text("About", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  //      Navigator.push(
                  //        context,
                  //      MaterialPageRoute(
                  //        builder: (context) => Administration()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        size: 50.0,
                      ),
                      Text("Faculty", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  //                Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => Department()));
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

class IseAboutp1 extends StatelessWidget {
  const IseAboutp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Information Science Department', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: PageView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "Swipe Left for Additional link",
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Vision:-\n To develop competent Information Technology Engineers having complete Knowledge and skills in contemporary Information Technology practices.\nMission M1. To develop contemporary curriculum in information technology delivered using Innovative teaching learning practices and ICT tools.\nM2.  To provide facilities for relevant research and expose students to the best industry Practices in Information Technology.\nM3. To inculcate the best moral values and professional ethics in students.",
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Swipe Left for Additional link\n",
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {},
                      //splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "Additional Links",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1RgLmlc579lTn9oXA1Bl487fFDcqribMv/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "ISE News Letter",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1NdobuJpQMdVrUgXKCyTSut_cDXcxaONs/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Question Paper Sample",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1DGQL-bR2fsrnTAsxmyRJNQ9OYVUzJkoB/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Faculty Journal Publications",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/12eAUcE2bHfxBgigHeJNNHfnTBgroEF_m/view?usp=sharing');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "FDP Attended",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://sdmcet.ac.in/download/infrastructure-computing-facilities/?wpdmdl=4442');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Infrastructure and Facilities",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1lPnOQs8Jgph4g2VJ6zxdIhbUesRRFvXA/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Innovative Ideas",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1gVEtzim_SPJQtJZs6QWd_gQRgVncIqNw/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Laboratory Details",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1FZ02J2mjCf_Ipp-0vqJWvlbvSm6kPXCM/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Workshop FDP Conducted",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1FbRPKGuij6d_TJWS0k5p0ANXbCKFbJ7j/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Simulation Based Teaching",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/drive/folders/1mnp0w843GgzhetkTnnTmQlW1WsH2wT5I');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Summary on DBMS Project",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1k7PqthLOex1q_FJsahl5vvfeNz8LcjZa/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Best Practice",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1hMZ8aWrcQQcLB9BBJm-TKT4Zjf2LPKQT/view?usp=sharing');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Innovation Teaching-Simulation",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1tRtH-cPvVpKNej5zAQEz6A-O-L2KCqyg/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Placement Summary",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

//class time table

class TimeTable extends StatefulWidget {
  _TimeTable createState() => new _TimeTable();
}

class _TimeTable extends State<TimeTable> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
      Firestore.instance.collection("ISETimeTable");

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
            'Information Science Department', /*style:TextStyle(color:Colors.black)*/
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
//end of class TimeTable
