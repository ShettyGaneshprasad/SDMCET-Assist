import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FAdmin%20statue.jpg?alt=media&token=98ce0133-37b3-441b-9811-bb52165b539b',
          ),
          /* Text(
            "Dean's",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 50,
              fontStyle: FontStyle.normal,
            ),
          ),*/
          Text(
            "\nDR. K. GOPINATH",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Principal",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FPrincipal-Dr-K-Gopinath-2-1.jpg?alt=media&token=cfd3b9fc-a78b-4342-baa5-0b4d194a9ddd',
            fit: BoxFit.contain,
          ),
          Text(
            "\n\nS. Prabhakar",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Vice President",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fleader-prabhakar.jpg?alt=media&token=b06375f5-f2cd-410d-b653-b7169cc7e277',
            fit: BoxFit.contain,
          ),
          Text(
            "\n\nD.surendrakumar",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Vice President",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fleader-surendrakumar.jpg?alt=media&token=3b116296-c3b9-4af4-a22c-e56748d7fe3b',
            fit: BoxFit.contain,
          ),
          Text(
            "\n\nD.Harshendra Kumar",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Secretary",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2Fharsendrakumar.jpg?alt=media&token=7a1a6e37-eda5-4963-b196-a09f50a47c16',
            fit: BoxFit.contain,
          ),
          Text(
            "\n\nDr Yashoverma",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Secretary",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
