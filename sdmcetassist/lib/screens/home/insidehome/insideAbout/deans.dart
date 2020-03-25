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
          Image.asset('assets/Principal-Dr-K-Gopinath-2-1.jpg'),
          /*
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FPrincipal-Dr-K-Gopinath-2-1.jpg?alt=media&token=cfd3b9fc-a78b-4342-baa5-0b4d194a9ddd',
            fit: BoxFit.contain,
          ),*/
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
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2Favkulkarni-min.jpg?alt=media&token=08120e5f-7af1-42fb-810e-20b3ba21dc71',
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
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2Framesh-min.jpg?alt=media&token=e34f99d0-91b9-43ba-85b5-3a412637ef39',
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
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FProf.-Clement-Chelli-min.jpg?alt=media&token=d89dbb2f-79f2-4d47-a14a-b3df378e589b',
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
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FDeanPic%2FSavitri-Raju-min.jpg?alt=media&token=36899e96-1823-4249-8931-ccf78e338c26',
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
