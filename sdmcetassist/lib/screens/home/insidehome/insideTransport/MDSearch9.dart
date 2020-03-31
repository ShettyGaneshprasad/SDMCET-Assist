import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MDSearch9 extends StatefulWidget {
  MDSearch9() : super();
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
      Pickup(2, 'BHARTI NAGAR'),
      Pickup(3, 'C.B.NAGAR'),
      Pickup(4, 'CBT'),
      Pickup(5, 'COLLEGE'),
      Pickup(6, 'COURT CIRCLE'),
      Pickup(7, 'DASANKOPP CIRCLE'),
      Pickup(8, 'DASANKOPPA CROSS'),
      Pickup(9, 'DHARWAD HOTEL'),
      Pickup(10, 'DURGA TEMPLE CROSS'),
      Pickup(11, 'GANDHI CHOUK'),
      Pickup(12, 'GERMAN HOSPITAL'),
      Pickup(13, 'HEAD POST'),
      Pickup(14, 'JAYANAGAR'),
      Pickup(15, 'JUBLI CIRCLE'),
      Pickup(16, 'KAREMMA TEMPLE'),
      Pickup(17, 'KCD CIRCLE'),
      Pickup(18, 'KESHAV NAGAR'),
      Pickup(19, 'KUSUM NAGAR'),
      Pickup(20, 'M G BANK'),
      Pickup(21, 'MALMADDI'),
      Pickup(22, 'MAHISHI ROAD'),
      Pickup(23, 'MARATHA COLONY'),
      Pickup(24, 'MRUTUNJAY NAGAR'),
      Pickup(25, 'MURGAMATH'),
      Pickup(26, 'NARYANPUR'),
      Pickup(27, 'NIRMAL NAGAR CHURCH'),
      Pickup(28, 'NTTF'),
      Pickup(29, 'OLD DSP CIRCLE'),
      Pickup(30, 'OLD SP CIRCLE'),
      Pickup(31, 'PAVAN SCHOOL'),
      Pickup(32, 'POLICE H Q'),
      Pickup(33, 'R.K.NAGAR'),
      Pickup(34, 'RAILWAY STATION'),
      Pickup(35, 'SADHANKERI'),
      Pickup(36, 'SAMPIGENAGAR'),
      Pickup(37, 'SAPTAPUR'),
      Pickup(38, 'SHIVAGIRI'),
      Pickup(39, 'SHIVAJI CIRCLE'),
      Pickup(40, 'SRINAGAR'),
      Pickup(41, 'T.V.TOWER'),
      Pickup(42, 'TOLL NAKA'),
      Pickup(43, 'UDAY HOSTEL'),
      Pickup(44, 'VINAYAK NAGAR'),
      Pickup(45, 'YEMMIKERI'),
    ];
  }
}

class DropDownState extends State<MDSearch9> {
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
    } else if (_pickup == "BHARTI NAGAR") {
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
                  "BHARTI NAGAR\nBus No:KA25 B6903\nTiming:8:29 AM - 8:33 AM",
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
      } else if (_pickup == "CBT") {
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
                    "REACHED COLLEGE\nBus No:KA25 B6903\nTiming:8:57 AM - 9:00 AM",
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
                    "COURT CIRCLE\nBus No:KA25 B6903\nTiming:8:10 AM - 8:12 AM",
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
                    "DASANKOPP CIRCLE\nBus No:KA25 B6903\nTiming:8:16 AM - 8:18 AM",
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
      else if (_pickup == "DASANKOPPA CROSS") {
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
                    "DASANKOPPA CROSS\nBus No:KA25 B6903\nTiming:7:15 AM - 7: 18 AM",
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
        else if (_pickup == "DHARWAD HOTEL") {
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
                    "DHARWAD HOTEL\nBus No:KA25 B6903\nTiming:8:45 AM - 8:48 AM",
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
      } else if (_pickup == "DURGA TEMPLE CROSS") {
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
      } else if (_pickup == "GANDHI CHOUK") {
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
      if (_pickup == "GERMAN HOSPITAL") {
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
                    "HEAD POST\nBus No:KA25 B6903\nTiming:8:48 AM - 8:51 AM",
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
      if (_pickup == "KCD CIRCLE") {
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
                    "KCD CIRCLE\nBus No:KA25 B6903\nTiming:8:13 AM - 8:15 AM\nBus No:KA25 B6903\nTiming:8:39 AM - 8:42 AM",
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
      if (_pickup == "KUSUM NAGAR") {
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
                    "KUSUM NAGAR\nBus No:KA25 B6903\nTiming:8:19AM - 8:22AM",
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
       if (_pickup =="MALMADDI") {
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
                    "MALMADDI\nBus No:KA25 B3342\nTiming:7:49 AM - 7:50 AM",
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
      if (_pickup == "MAHISHI ROAD") {
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
                    "MAHISHI ROAD\nBus No:KA25 B3342\nTiming:7:52 AM - 7:54 AM",
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
      }////end of all ise combination if else ladder
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
                    "MARATHA COLONY\nBus No:KA25 B4922\nTiming:7:31 AM - 7:33 AM",
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
                    "T.V.TOWER\nBus No:KA25 B6903\nTiming:8:34 AM - 8:36 AM",
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
                    "TOLL NAKA\nBus No:KA25 B6903\nTiming:8:56 AM - 8:57 AM",
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
                    "VINAYAK NAGAR\nBus No:KA25 B6903\nTiming:8:24 AM - 8:27 AM",
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
                    "YEMMIKERI\nBus No:KA25 B6903\nTiming:8:54 AM - 8:55 AM",
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
          'Dharwad 9:00', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue,
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
