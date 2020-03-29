import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Navigation extends StatefulWidget {
  Navigation() : super();
  final String title = "Dropdown Menu";

  @override
  DropDownState createState() => DropDownState();
}

class Source {
  int id;
  String name;
  Source(this.id, this.name);

  static List<Source> getSource() {
    return <Source>[
      Source(1, 'CSE'),
      Source(2, 'ISE'),
      Source(3, 'E&C'),
      Source(4, 'E&E'),
      Source(5, 'CHEMICAL'),
      Source(6, 'MECHANICAL'),
      Source(7, 'CIVIL'),
      Source(8, 'DEPT. OF CHEM'),
      Source(9, 'DEPT. OF PHYSIC'),
      Source(10, 'DEPT. OF MATHS'),
    ];
  }
}

class Destination {
  int id;
  String name;
  Destination(this.id, this.name);

  static List<Destination> getDestination() {
    return <Destination>[
      Destination(1, 'CSE'),
      Destination(2, 'ISE'),
      Destination(3, 'E&C'),
      Destination(4, 'E&E'),
      Destination(5, 'CHEMICAL'),
      Destination(6, 'MECHANICAL'),
      Destination(7, 'CIVIL'),
      Destination(8, 'DEPT. OF CHEM'),
      Destination(9, 'DEPT. OF PHYSIC'),
      Destination(10, 'DEPT. OF MATHS'),
    ];
  }
}

class DropDownState extends State<Navigation> {
  List<Source> _source = Source.getSource();
  List<Destination> _destination = Destination.getDestination();

  List<DropdownMenuItem<Source>> _dropDownMenuItemsSource;
  List<DropdownMenuItem<Destination>> _dropDownMenuItemsDestination;

  Source _selectedSource;
  Destination _selectedDestination;

  @override
  void initState() {
    _dropDownMenuItemsSource = buildDropdownmenuItemsSource(_source);
    _dropDownMenuItemsDestination =
        buildDropdownmenuItemsDestination(_destination);

    _selectedSource = _dropDownMenuItemsSource[0].value;
    _selectedDestination = _dropDownMenuItemsDestination[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Source>> buildDropdownmenuItemsSource(List sources) {
    List<DropdownMenuItem<Source>> itemsSource = List();
    for (Source source in sources) {
      itemsSource.add(DropdownMenuItem(
        value: source,
        child: Text(source.name),
      ));
    }
    return itemsSource;
  }

  List<DropdownMenuItem<Destination>> buildDropdownmenuItemsDestination(
      List destinations) {
    List<DropdownMenuItem<Destination>> items = List();
    for (Destination destination in destinations) {
      items.add(DropdownMenuItem(
        value: destination,
        child: Text(destination.name),
      ));
    }
    return items;
  }

  onChangeDropdownItemSource(Source selectedSource) {
    setState(() {
      _selectedSource = selectedSource;
    });
  }

  onChangeDropdownItemDestination(Destination selectedDestination) {
    setState(() {
      _selectedDestination = selectedDestination;
    });
  }

  Widget selectCollection() {
    String _source = "${_selectedSource.name}";
    String _destination = "${_selectedDestination.name}";

    if (_source == "CSE" && _destination == "ISE" ||
        _source == "ISE" && _destination == "CSE") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {},
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "CSE <-> ISE",
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
    } else if (_source == "CSE" && _destination == "E&C" ||
        _source == "E&C" && _destination == "CSE") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            //   Navigator.push(
            //   context, MaterialPageRoute(builder: (context) => CSEtoENC()));
            launch(
                "https://drive.google.com/file/d/1_9YGAP9fJMJPSdomH0NS2-mWheaoEVjr/view?usp=sharing");
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "CSE <-> E&C",
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
      if (_source == "CSE" && _destination == "CIVIL" ||
          _source == "CIVIL" && _destination == "CSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> CIVIL",
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
      } else if (_source == "CSE" && _destination == "CHEMICAL" ||
          _source == "CHEMICAL" && _destination == "CSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> CHEMICAL",
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
      } else if (_source == "CSE" && _destination == "MECHANICAL" ||
          _source == "MECHANICAL" && _destination == "CSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> MECHANICAL",
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
      } else if (_source == "CSE" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. OF PHYSIC" && _destination == "CSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> DEPT. OF PHYSIC",
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
      } else if (_source == "CSE" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "CSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> DEPT. OF MATHS",
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
      } else if (_source == "CSE" && _destination == "E&E" ||
          _source == "E&E" && _destination == "CSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> E&E",
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
      } else if (_source == "CSE" && _destination == "DEPT. OF CHEM" ||
          _source == "DEPT. OF CHEM" && _destination == "CSE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CSE <-> DEPT. OF CHEM",
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
      } /////end of cse to  all////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      if (_source == "ISE" && _destination == "E&C" ||
          _source == "E&C" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> E&C",
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
      if (_source == "ISE" && _destination == "E&E" ||
          _source == "E&E" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> E&E",
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
      if (_source == "ISE" && _destination == "CHEMICAL" ||
          _source == "CHEMICAL" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> CHEMICAL",
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
      if (_source == "ISE" && _destination == "MECHANICAL" ||
          _source == "MECHANICAL" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> MECHANICAL",
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
      if (_source == "ISE" && _destination == "CIVIL" ||
          _source == "CIVIL" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> CIVIL",
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
      if (_source == "ISE" && _destination == "DEPT. OF CHEM" ||
          _source == "DEPT. OF CHEM" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> DEPT. OF CHEM",
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
      if (_source == "ISE" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. OF PHYSIC" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> DEPT. OF PHYSIC",
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
      if (_source == "ISE" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "ISE") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "ISE <-> DEPT. OF PHYSIC",
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
      if (_source == "E&C" && _destination == "E&E" ||
          _source == "E&E" && _destination == "E&C") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&C <-> E&E",
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
      if (_source == "E&C" && _destination == "CHEMICAL" ||
          _source == "CHEMICAL" && _destination == "E&C") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&C <-> CHEMICAL",
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
      if (_source == "E&C" && _destination == "MECHANICAL" ||
          _source == "MECHANICAL" && _destination == "E&C") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&C <-> MECHANICAL",
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
      if (_source == "E&C" && _destination == "CIVIL" ||
          _source == "CIVIL" && _destination == "E&C") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&C <-> civil",
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
      if (_source == "E&C" && _destination == "DEPT. OF CHEM" ||
          _source == "DEPT. OF CHEM" && _destination == "E&C") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&C <-> DEPT. OF CHEM",
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
      if (_source == "E&C" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. OF PHYSIC" && _destination == "E&C") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&C <-> DEPT. OF PHYSIC",
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
      if (_source == "E&C" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "E&C") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&C <-> DEPT. OF MATHS",
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
      if (_source == "E&E" && _destination == "CHEMICAL" ||
          _source == "CHEMICAL" && _destination == "E&E") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&E <-> CHEMICAL",
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
      if (_source == "E&E" && _destination == "CIVIL" ||
          _source == "CIVIL" && _destination == "E&E") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&E <-> CIVIL",
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
      if (_source == "E&E" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "E&E") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&E <-> DEPT. OF MATHS",
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
      if (_source == "E&E" && _destination == "MECHANICAL" ||
          _source == "MECHANICAL" && _destination == "E&E") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&E <-> MECHANICAL",
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
      if (_source == "E&E" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. OF PHYSIC" && _destination == "E&E") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&E <-> DEPT. OF PHYSICS",
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
      if (_source == "E&E" && _destination == "DEPT. OF CHEM" ||
          _source == "DEPT. OF CHEM" && _destination == "E&E") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "E&E <-> DEPT. OF CHEM",
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
      if (_source == "CHEMICAL" && _destination == "MECHANICAL" ||
          _source == "MECHANICAL" && _destination == "CHEMICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CHEMICAL <-> MECHANICAL",
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
      if (_source == "CHEMICAL" && _destination == "CIVIL" ||
          _source == "CIVIL" && _destination == "CHEMICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CHEMICAL <-> CIVIL",
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
      if (_source == "CHEMICAL" && _destination == "DEPT. OF CHEM" ||
          _source == "DEPT. OF CHEM" && _destination == "CHEMICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CHEMICAL <-> DEPT. OF CHEM",
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
      if (_source == "CHEMICAL" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. OF PHYSIC" && _destination == "CHEMICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CHEMICAL <-> DEPT. OF PHYSIC",
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
      if (_source == "CHEMICAL" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "CHEMICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CHEMICAL <-> DEPT. OF MATHS",
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
      if (_source == "MECHANICAL" && _destination == "DEPT. OF CHEM" ||
          _source == "DEPT. OF CHEM" && _destination == "MECHANICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "MECHANICAL <-> DEPT. OF CHEM",
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
      if (_source == "MECHANICAL" && _destination == "CIVIL" ||
          _source == "CIVIL" && _destination == "MECHANICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "MECHANICAL <-> CIVIL",
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
      if (_source == "MECHANICAL" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. OF PHYSIC" && _destination == "MECHANICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "MECHANICAL <-> DEPT. OF PHYSIC",
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
      if (_source == "MECHANICAL" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "MECHANICAL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "MECHANICAL <-> DEPT. OF MATHS",
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
      if (_source == "CIVIL" && _destination == "DEPT. OF CHEM" ||
          _source == "DEPT. OF CHEM" && _destination == "CIVIL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CIVIL <-> DEPT. OF CHEM",
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
      if (_source == "CIVIL" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. OF PHYSIC" && _destination == "CIVIL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CIVIL <-> DEPT. OF PHYSIC",
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
      if (_source == "CIVIL" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "CIVIL") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "CIVIL <-> DEPT. OF MATHS",
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
      } //END OF  CIVIL/////////////////////////////////////////////////////
      if (_source == "DEPT. OF CHEM" && _destination == "DEPT. OF PHYSIC" ||
          _source == "DEPT. PHYSIC" && _destination == "DEPT. OF CHEM") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "DEPT. OF CHEM<-> DEPT. OF PHYSIC",
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
      if (_source == "DEPT. OF CHEM" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "DEPT. OF CHEM") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "DEPT. OF CHEM<-> DEPT. OF MATHS",
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
      } //END OF DCHEM///////////////////////////
      if (_source == "DEPT. OF PHYSIC" && _destination == "DEPT. OF MATHS" ||
          _source == "DEPT. OF MATHS" && _destination == "DEPT. OF PHYSIC") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "DEPT. OF PHYSIC<-> DEPT. OF MATHS",
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
      //END OF DPHYSICS
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
          'Navigation', /*style:TextStyle(color:Colors.black)*/
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
                  "\nSelect your current location ",
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
                  items: _dropDownMenuItemsSource,
                  onChanged: onChangeDropdownItemSource,
                  value: _selectedSource,
                  autofocus: true,
                  iconSize: 60,
                ),
                Text(
                  "\n ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                // Text('selected: ${_selectedSource.name}'),
                Text(
                  "\nSelect Your Destination",
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
                  items: _dropDownMenuItemsDestination,
                  onChanged: onChangeDropdownItemDestination,
                  value: _selectedDestination,
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
                //Text('Press below : ${_selectedDestination.name}'),
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
