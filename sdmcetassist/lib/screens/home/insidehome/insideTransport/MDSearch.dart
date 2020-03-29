import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*import 'insideNavigation/CHEMtoDCHEM.dart';
import 'insideNavigation/CHEMtoDMATHS.dart';
import 'insideNavigation/CHEMtoDPHY.dart';
import 'insideNavigation/CIVILtoCHEM.dart';
import 'insideNavigation/CIVILtoDCHEM.dart';
import 'insideNavigation/CIVILtoDMATHS.dart';
import 'insideNavigation/CIVILtoDPHY.dart';
import 'insideNavigation/CSETOENC.dart';
import 'insideNavigation/CSEtoCIVIL.dart';
import 'insideNavigation/CSEtoDCHEM.dart';
import 'insideNavigation/CSEtoDMATHS.dart';
import 'insideNavigation/CSEtoDPHYSICS.dart';
import 'insideNavigation/CSEtoENE.dart';
import 'insideNavigation/CSEtoISE.dart';
import 'insideNavigation/CSEtoCHEM.dart';
import 'insideNavigation/DCHEMtoDMATHS.dart';
import 'insideNavigation/DCHEMtoDPHY.dart';
import 'insideNavigation/DPHYtoDMATHS.dart';
import 'insideNavigation/ENCtoCHEMICAL.dart';
import 'insideNavigation/ENCtoCIVIL.dart';
import 'insideNavigation/ENCtoDCHEM.dart';
import 'insideNavigation/ENCtoDMATH.dart';
import 'insideNavigation/ENCtoDPHY.dart';
import 'insideNavigation/ENCtoENE.dart';
import 'insideNavigation/ENCtoMECHANICAL.dart';
import 'insideNavigation/ENEtoCHEMICAL.dart';
import 'insideNavigation/ENEtoCIVIL.dart';
import 'insideNavigation/ENEtoDCHEM.dart';
import 'insideNavigation/ENEtoDMATH.dart';
import 'insideNavigation/ENEtoDPHYSIC.dart';
import 'insideNavigation/ENEtoMECHANICAL.dart';
import 'insideNavigation/ISEtoCHEMICAL.dart';
import 'insideNavigation/ISEtoCIVIL.dart';
import 'insideNavigation/ISEtoDCHEM.dart';
import 'insideNavigation/ISEtoDMATHS.dart';
import 'insideNavigation/ISEtoDPHYSIC.dart';
import 'insideNavigation/ISEtoENC.dart';
import 'insideNavigation/ISEtoENE.dart';
import 'insideNavigation/ISEtoMECHANICAL.dart';
import 'insideNavigation/MECHtoCIVIL.dart';
import 'insideNavigation/MECHtoDCHEM.dart';
import 'insideNavigation/MECHtoDMATHS.dart';
import 'insideNavigation/MECHtoDPHYSIC.dart';
import 'insideTransport/CSEtoMECH.dart';
*/
class MDSearch extends StatefulWidget {
  MDSearch() : super();
  final String title = "Dropdown Menu";

  @override
  DropDownState createState() => DropDownState();
}

class Pickup {
  int id;
  String name;
  Pickup(this.id, this.name);

  static List<Pickup> getPickup() {
    return <Pickup>[
      Pickup(1, 'BAGALKOT PETROL PUMP'),
      Pickup(2, 'BHARATI NAGAR'),
      Pickup(3, 'C.B.NAGAR'),
      Pickup(4, 'CBT'),
      Pickup(5, 'COLLEGE'),
      Pickup(6, 'COURT CIRCLE'),
      Pickup(7, 'DASANKOPP CIRCLE'),
      Pickup(8, 'DURGA TEMPLE CROSS'),
      Pickup(9, 'GANDHI CHOUK'),
      Pickup(10, 'GERMAN HOSPITAL'),
      Pickup(11, 'HEAD POST'),
      Pickup(12, 'JAYANAGAR'),
      Pickup(13, 'JUBLI CIRCLE'),
      Pickup(14, 'KAREMMA TEMPLE'),
      Pickup(15, 'KCD'),
      Pickup(16, 'KESHAV NAGAR'),
      Pickup(17, 'M G BANK'),
      Pickup(18, 'MARATHA COLONY'),
      Pickup(19, 'MRUTUNJAY NAGAR'),
      Pickup(20, 'MURGAMATH'),
      Pickup(21, 'NARYANPUR'),
      Pickup(22, 'NIRMAL NAGAR CHURCH'),
      Pickup(23, 'NTTF'),
      Pickup(24, 'OLD DSP CIRCLE'),
      Pickup(25, 'OLD SP CIRCLE'),
      Pickup(26, 'PAVAN SCHOOL'),
      Pickup(27, 'POLICE H Q'),
      Pickup(28, 'R.K.NAGAR'),
      Pickup(29, 'RAILWAY STATION'),
      Pickup(30, 'SADHANKERI'),
      Pickup(31, 'SAMPIGENAGAR'),
      Pickup(32, 'SAPTAPUR'),
      Pickup(33, 'SHIVAGIRI'),
      Pickup(34, 'SHIVAJI CIRCLE'),
      Pickup(35, 'SRINAGAR'),
      Pickup(36, 'T.V.TOWER'),
      Pickup(37, 'TOLL NAKA'),
      Pickup(38, 'UDAY HOSTEL'),
      Pickup(39, 'VINAYAK NAGAR'),
      Pickup(40, 'YEMMIKERI'),
    ];
  }
}

class DropDownState extends State<MDSearch> {
  List<Pickup> _pickup = Pickup.getPickup();
  

  List<DropdownMenuItem<Pickup>> _dropDownMenuItemsPickup;


  Pickup _selectedPickup;


  @override
  void initState() {
    _dropDownMenuItemsPickup = buildDropdownmenuItemsPickup(_pickup);
   

    _selectedPickup = _dropDownMenuItemsPickup[0].value;
   
    super.initState();
  }

  List<DropdownMenuItem<Pickup>> buildDropdownmenuItemsPickup(List pickups) {
    List<DropdownMenuItem<Pickup>> itemsPickup = List();
    for (Pickup pickup in pickups) {
      itemsPickup.add(DropdownMenuItem(
        value: pickup,
        child: Text(pickup.name),
      ));
    }
    return itemsPickup;
  }

  onChangeDropdownItemPickup(Pickup selectedPickup) {
    setState(() {
      _selectedPickup = selectedPickup;
    });
  }

  Widget selectCollection() {
    String _pickup = "${_selectedPickup.name}";
  
    if (_pickup == "BAGALKOT PETROL PUMP") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
           // Navigator.push(
             //   context, MaterialPageRoute(builder: (context) => CSEtoISE()));
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "BAGALKOT PETROL PUMP",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else if (_pickup == "BHARATI NAGAR" ) {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
          //  Navigator.push(
            //    context, MaterialPageRoute(builder: (context) => CSEtoENC()));
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "BHARATI NAGAR",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else {
      if (_pickup == "C.B.NAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => CSEtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "C.B.NAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } else if (_pickup == "CBT" ) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => CSEtoCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CBT",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } else if (_pickup == "COLLEGE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
          //    Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => CSEtoMECH()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "COLLEGE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } else if (_pickup == "COURT CIRCLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => CSEtoDPHYSICS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "COURT CIRCLE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } else if (_pickup == "DASANKOPP CIRCLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //  Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => CSEtoDMATHS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "DASANKOPP CIRCLE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }else if (_pickup == "DURGA TEMPLE CROSS") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(
               //   context, MaterialPageRoute(builder: (context) => CSEtoENE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "DURGA TEMPLE CROSS",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } else if (_pickup == "GANDHI CHOUK" ) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => CSEtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "GANDHI CHOUK",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } //////end of cse to  all////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      if (_pickup == "GERMAN HOSPITAL" ) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(
               //   context, MaterialPageRoute(builder: (context) => ISEtoENC()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "GERMAN HOSPITAL",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "HEAD POST") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(
              //    context, MaterialPageRoute(builder: (context) => ISEtoENE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "HEAD POST",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "JAYANAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoCHEMICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "JAYANAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "JUBLI CIRCLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoMECHANICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "JUBLI CIRCLE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "KAREMMA TEMPLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "KAREMMA TEMPLE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "KCD") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ISEtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "KCD",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "KESHAV NAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => ISEtoDPHYSIC()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "KESHAV NAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "M G BANK") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => ISEtoDMATHS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "M G BANK",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } ////end of all ise combination if else ladder
      if (_pickup == "MARATHA COLONY") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(
              //    context, MaterialPageRoute(builder: (context) => ENCtoENE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "MARATHA COLONY",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "MRUTUNJAY NAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => ENCtoCHEMICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "MRUTUNJAY NAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "MURGAMATH") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
            //      MaterialPageRoute(builder: (context) => ENCtoMECHANICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "MURGAMATH",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "NARYANPUR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENCtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NARYANPUR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "NIRMAL NAGAR CHURCH") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => ENCtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NIRMAL NAGAR CHURCH",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "NTTF") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENCtoDPHY()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "NTTF",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "OLD DSP CIRCLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENCtoDMATH()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "OLD DSP CIRCLE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "OLD SP CIRCLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => ENEtoCHEMICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "OLD SP CIRCLE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "PAVAN SCHOOL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
             //    MaterialPageRoute(builder: (context) => ENEtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "PAVAN SCHOOL",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "POLICE H Q") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENEtoDMATH()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "POLICE H Q",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "R.K.NAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENEtoMECHANICAL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "R.K.NAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "RAILWAY STATION") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => ENEtoDPHYSIC()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "RAILWAY STATION",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "SADHANKERI") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => ENEtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "SADHANKERI",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } //END OF ENE///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      if (_pickup == "SAMPIGENAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
          //    Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => MECHtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "SAMPIGENAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "SAPTAPUR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => CIVILtoCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "SAPTAPUR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "SHIVAGIRI") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => CHEMtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "SHIVAGIRI",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "SHIVAJI CIRCLE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
          //    Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => CHEMtoDPHY()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "SHIVAJI CIRCLE",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "SRINAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
         //     Navigator.push(context,
            //      MaterialPageRoute(builder: (context) => CHEMtoDMATHS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "SRINAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } //END OF CHEMICAL
      if (_pickup == "T.V.TOWER") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
             //     MaterialPageRoute(builder: (context) => MECHtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "T.V.TOWER",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "TOLL NAKA") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => MECHtoCIVIL()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "TOLL NAKA",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "UDAY HOSTEL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
          //    Navigator.push(context,
            //      MaterialPageRoute(builder: (context) => MECHtoDPHYSIC()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "UDAY HOSTEL",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      if (_pickup == "VINAYAK NAGAR") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
            //  Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => MECHtoDMATHS()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "VINAYAK NAGAR",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      } ////END OF MECHANICAL////////////////////////////////////////////////////////////////////////////////
      if (_pickup == "YEMMIKERI") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
           //   Navigator.push(context,
              //    MaterialPageRoute(builder: (context) => CIVILtoDCHEM()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "YEMMIKERI",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      }
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            //ontap null;
          },
          splashColor: Colors.red,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "INVALID!!",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Dharwad 8:00', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "\n\n\n ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  "\nSelect your pickup location ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                DropdownButton(
                  items: _dropDownMenuItemsPickup,
                  onChanged: onChangeDropdownItemPickup,
                  value: _selectedPickup,
                  autofocus: true,
                  iconSize: 60,
                ),               
                Text(
                  "\n\ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                Text('Press below : ${_selectedPickup.name}'),
              ],
            ),
            selectCollection(),
            // Image.network(_setImage())
          ],
        ),
      ),
    );
  }
}
