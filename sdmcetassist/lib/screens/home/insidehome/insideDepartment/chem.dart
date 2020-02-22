import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideDepartment/fullscreen_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Chemical extends StatefulWidget {
  _ChemicalState createState() => new _ChemicalState();
}

class _ChemicalState extends State<Chemical> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
      Firestore.instance.collection("timeTable");

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
            'Chemical Department', /*style:TextStyle(color:Colors.black)*/
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
                staggeredTileBuilder: (i) => new StaggeredTile.count(4, 4),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              )
            : new LinearProgressIndicator());
  }
}

class ChemAboutp1 extends StatelessWidget {
  const ChemAboutp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Chemical Department', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Chemical Engineering Department at the SDMCET, Dharwad was established in the year 1995. The department is recognized by AICTE and affiliated to Visvesvaraya Technological University, Belagavi. The program gained an Autonomous Status since 2007 and accredited thrice (Recent: 2018-2021 under Tier-I category). The sanctioned intake of the department is 30 for the Undergraduate program i.e. B.E. in Chemical Engineering. The department takes pride in it’s past achievements and has the dream supported by action plans to make it as one of the best Chemical Engineering Department to develop the proficient engineers to meet the industrial and societal needs with human values.",
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
