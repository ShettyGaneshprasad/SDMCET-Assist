import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
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
            "\n\nA. V. KULKARNI",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Dean Administration",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2Favkulkarni.jpg?alt=media&token=0969c4f1-49da-44b3-bc0f-5bc6f7df9533',
            fit: BoxFit.contain,
          ),
          Text(
            "\n\nDR RAMESH L CHAKRASALI",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Dean Academic Program & Research and Development",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2Framesh.jpg?alt=media&token=76871f51-2dee-470c-9828-16483b48afa6',
            fit: BoxFit.contain,
          ),
          Text(
            "\n\nC. M. CHELLI",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Dean Infrastructure Planning & Development",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FProf.-Clement-Chelli.jpg?alt=media&token=a73739a4-9090-4235-a2d3-d676b8a3434b',
            fit: BoxFit.contain,
          ),
          Text(
            "\n\nSAVITRI RAJU",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Controller of Examinations",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.normal,
            ),
          ),
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FSavitri-Raju.jpg?alt=media&token=1d86ae78-ab4d-4932-b00a-fffd8b4a1a64',
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
