import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Admission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ListView(children: <Widget>[
        Text(
          "Overview",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 40,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\nSDMCET a premier institute in India accepts admissions through 3 selection processes for all branches of undergraduate courses: Viz. COMMON Entrance TEST(CET), COMEDK and MANAGEMENT quota\n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "Admission Procedure for all candidates seeking admission",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 30,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\n1. Purchase Admission Application form by paying Rs.450/- by cash at the Counter.\n\n2. Read all the instructions carefully and fill the application form in BLOCK LETTERS ONLY. Sign wherever it is mentioned, with date.\n\n3. D.D. / cash to be remitted to Bank through challans issued along with the Application form.\n\n4. Submit the completed Application Form along with documents & bank receipt. (Original + 4 sets of photo copies) Keep one set of documents with you for your record.\n\n5. If Hostel admission is required, purchase Hostel Admission Form by paying Rs.25/- by cash at the counter & submit the completed hostel admission form along with the D.D. / cash remitted Bank challans towards hostel fees.\n\n",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "Documents to be submitted along with the Application form during addmission",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 30,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\n1. CET Allotment order / COMEDK Allotment order / SDME Society Admission Order (as applicable).\n\n2.SSLC / 10th Std. Marks Card.\n\n3. PUC II/ 12th std Marks Card.\n\n4. Transfer Certificate.\n\n5. Study / Character Certificate.\n\n6. Photographs – 4 Passport size.\n\n7. CET Acknowledgement Card (Green Card) (for CET Quota seats only).\n\n8. Migration Certificate (for Non- Karnataka Candidates only).\n\n",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cet()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CET (Govt.Quota)",
                    style: new TextStyle(
                        fontSize: 50.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Cet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by Cet', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}

class Comedk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by COMEDK', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}

class Management extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by Management', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}

class Nri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission for Nri', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}

class LateralEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by Management', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}

/*class Management extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Admission by Management', 
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}*/
