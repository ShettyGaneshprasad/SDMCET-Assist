import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sdmcet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/CollegePic%2FAnnotation%202020-02-23%20202905.jpg?alt=media&token=714c636d-2d73-4f52-adb6-8711420456a3',
          ),
          Text(
            "\nSDMCET,Dharwad.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nShri Dharmasthala Manjunatheshwara College of Engineering & Technology, Dharwad was established in the year 1979 under the flagship of SDME Society and has grown into one of the nationally acclaimed premier engineering institutions in the country. The President of SDME Society Padmabhushana Dr. Veerendra Heggade, Dharmadhikari of Sri Kshetra Dharmasthala is the guiding spirit and driving force for all the progress and achievements of all the institutions established under SDME Society. SDME Society runs more than 30 institutions imparting quality education in all over the state including Medical and Dental colleges.\n\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "Quality Policy",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "\n“In its quest to be a role model institution, committed to meet or exceed the utmost interest of all the stake holders.”\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              // /color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nCore Values",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\n• Competency\n• Commitment\n• Equity\n• Team work\n• Trust\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              // /color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
