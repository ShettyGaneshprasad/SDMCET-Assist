import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Visionmission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image.asset('assets/adminstatue.jpg'),
          Text(
            "\nVision",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nTo develop competent professionals with human values.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\nMission",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 40,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            "\n1. To have contextually relevant Curricula.\n\n2. To promote effective Teaching Learning Practices supported by Modern Educational Tools and Techniques.\n\n3. To enhance Research Culture\n\n4. To involve the Industrial Expertise for connecting Classroom contents to real-life situations.\n\n5. To inculcate Ethics and soft-skills leading to overall personality development.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
