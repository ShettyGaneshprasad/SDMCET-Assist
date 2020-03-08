import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnlineFeesPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        Text(
          "\nSteps to be followed for \nonline fee payment.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 30,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\n   1.Enter your USN in the space for user ID\n   2.Enter your date of birth as the password\n   3.Then click on the Login button.\n   4.The details will be displayed.\n   5.Click on – I agree and Initiate payment.\n   6.Select the mode of paymen.\n",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "\nNote:",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 30,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    ));
  }
}
