import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Cse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Computer Science Department', /*style:TextStyle(color:Colors.black)*/
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
                      MaterialPageRoute(builder: (context) => CseAbout()));
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
            Center(
                child: SizedBox.expand(
              child: ColorizeAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "\“Talk is cheap.Show me the code.\”\n― Linus Torvalds",
                  "Bill Gates",
                  "Steve Jobs",
                ],
                textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
                colors: [
                  Colors.purple,
                  Colors.blue,
                  Colors.yellow,
                  Colors.red,
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class CseAboutp1 extends StatelessWidget {
  const CseAboutp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Computer Science Department', /*style:TextStyle(color:Colors.black)*/
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
                  "The department of Computer Science and Engineering is established in the year 1985. Currently one UG Programme with the intake of 120 and one PG Program with intake of 18 are running in Autonomous mode recogniged by VTU and UGC.The department has a research center, recognized by Visvesvaraya Technological University, Belgaum.The department has adopted OBE based Educational Philosophy since 2010 & transforming itself to drive practice based learning as its new learning model / initiatives for students, so that they are globally acceptable as a competent professionals with human values. To achieve this it has established its mission as stated below.\n\n1.To have contextually relevant Curricula.\n\n2.To promote effective Teaching Learning Practices supported by Modern Educational Tools and Techniques.\n\n3.To enhance Research Culture\n\n4.To involve the Industrial Expertise for connecting Classroom contents to real-life situations.\n\n5.To inculcate Ethics and soft-skills leading to overall personality development.\n\nFor any other information contact Head, Department of CSE @9448915301 / 0836-2328351 or email to upkulkarni@yahoo.com",
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
