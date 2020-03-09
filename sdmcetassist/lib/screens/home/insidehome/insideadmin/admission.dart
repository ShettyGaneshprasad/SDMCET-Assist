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
        Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Comedk()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "COMEDK",
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
        Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LateralEntry()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Lateral Entry",
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
        Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Management()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Management",
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
        Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Nri()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NRI",
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
        Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PgMtechMba()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "PG M.Tech and MBA",
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
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 20.0,
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
          ],
        ),
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
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fcomedk.jpg?alt=media&token=91d68611-70ec-4f2f-8468-1101a3829a21'),
            Text(
              "ELIGIBILITY CRITERIA",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nCandidates from all over the country are eligible to apply provided they should have appeared for the COMEDK Entrance exam ( UGET 2017) and should have fulfilled academic eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility. However, changes, if any, in the eligibility criteria by the VTU/DTE/ AICTE will be adopted.",
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
                  launch('http://www.comedk.org/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 20.0,
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
          ],
        ),
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
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 20.0,
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
          ],
        ),
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
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 20.0,
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
          ],
        ),
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
          'Lateral Entry', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 20.0,
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
          ],
        ),
      ),
    );
  }
}

class FeesStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Fees Structure',
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 20.0,
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
          ],
        ),
      ),
    );
  }
}

/*class FeesStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Fees Structure',
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}*/

class PgMtechMba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'PG M.Tech and MBA',
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fkcet.jpg?alt=media&token=3a77e751-9fa9-46d7-a5c8-c6a5e54ba5e2'),
            Text(
              "ELIGIBILITY FOR GOVERNMENT SEATS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 40,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe qualifying examinations prescribed for admission for B.E. is second PUC or 10+2 exam or equivalent examination recognized by State / Central Government/ University with English as a compulsory subject.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nThe General Merit candidates should have passed 2 nd PUC or 10+2 examination with a minimum aggregate of 45% marks (40% in respect of SC, ST and OBC candidates of Karnataka State) in Physics and Mathematics along with Chemistry or Bio Technology or Biology or Computer Science or Electronics as one of the optional subjects. English must be a subject of study. However, educational qualifications/eligibility criteria prescribed by the competent authority in regulations/guidelines issued from time to time will be applicable in deciding the eligibility.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nQualification:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "Pass in 10+2 or equivalent with Physics, Mathematics as compulsory subjects along with Chemistry or Biotechnology or Biology or Computer science or Electronics with a minimum of 45% marks taken together in Physics, Mathematics and any one of the optional subjects.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nELIGIBILITY CLAUSES:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "The candidate should have studied and passed in one or more Government or Government recognized educational institutions located in the State of Karnataka for a minimum period of SEVEN academic years commencing from 1st standard to 2nd PUC / 12th standard as on 1st July of the year in which the Entrance Test is held.Eligibility/Admissions/allotments made to & by the colleges shall be subject to approval by AICTE/Government/University.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\nDocuments to be produced:-",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "\n1. SSLC or 10 th Marks Card\n2. 2nd PUC / 12th standard Marks Card of the candidate.\n3. Candidate’s Study Certificate.\n4. If claiming Rural quota: – Rural Study Certificate from 1st to 10th std for Ten Complete Years.\n5. If claiming Kannada Medium quota: Kannada Medium Study Certificate from 1st to 10th std for Ten Complete Years.\n6. If claiming reservation benefits: Caste / Caste Income Certificate issued by Concerned Tahsildar- For SC / ST in Form-D, Category-I in form E and 2A, 2B, 3A and 3B in Form F.\n7. Transfer Certificate from previous Educational Institute.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ), //enter below
            Card(
              elevation: 5,
              margin: EdgeInsets.all(13.0),
              child: InkWell(
                onTap: () {
                  launch('http://kea.kar.nic.in/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\nTo Get More Info Click Here\n",
                        style: new TextStyle(
                            fontSize: 20.0,
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
          ],
        ),
      ),
    );
  }
}
