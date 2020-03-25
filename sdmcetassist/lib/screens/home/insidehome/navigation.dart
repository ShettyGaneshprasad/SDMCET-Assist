import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideNavigation/CSEtoISE.dart';

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
      Source(4, 'CIVIL'),
      Source(5, 'CHEM'),
      Source(6, 'DPHYSICS'),
      Source(7, 'DMATHS'),
      Source(8, 'DCHEM'),
      Source(9, 'CHEMICAL'),
      Source(10, 'MECH'),
      Source(11, 'E&E'),
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
      Destination(4, 'CIVIL'),
      Destination(5, 'CHEM'),
      Destination(6, 'DPHYSIC'),
      Destination(7, 'DMATHS'),
      Destination(8, 'DCHEM'),
      Destination(9, 'CHEMICAL'),
      Destination(10, 'MECH'),
      Destination(11, 'E&E'),
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

    if (_source == "CSE" && _destination == "ISE") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CSEtoISE()));
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "CSE TO ISE",
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
    } else if (_source == "CSE" && _destination == "CIVIL") {
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(13.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CSEtoISE()));
          },
          splashColor: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "GO",
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
      if (_source == "CSE" && _destination == "E&E") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CSEtoISE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "GO",
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
      } else if (_source == "CSE" && _destination == "CHEM") {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CSEtoISE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "GO",
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
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(13.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CSEtoISE()));
            },
            splashColor: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "GO",
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
    }
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(13.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CSEtoISE()));
        },
        splashColor: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "LAST",
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

    /*String _setImage() {
    String _mTitle = "${_selectedSource.name}";

    if (_mTitle == "ganesh") {
      return "assets/mobil_hello/goodmorrning.jpg";
    } else if (_mTitle == "shetty") {
      return "https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/Dr%20S.G%20Ankaliki%20E%26E.jpg?alt=media&token=63cfed31-14c7-4ed9-a692-61edab8edaae";
    }
  }*/
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
                  "\nselect a where you are",
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
                SizedBox(height: 20.0),
                Text('selected: ${_selectedSource.name}'),
                Text("select a Destination"),
                SizedBox(height: 20.0),
                DropdownButton(
                  items: _dropDownMenuItemsDestination,
                  onChanged: onChangeDropdownItemDestination,
                  value: _selectedDestination,
                ),
                SizedBox(height: 20.0),
                Text('selected: ${_selectedDestination.name}'),
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
