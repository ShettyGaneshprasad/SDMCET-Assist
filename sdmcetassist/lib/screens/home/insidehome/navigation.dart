import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      Source(1, 'ganesh'),
      Source(2, 'gaensh'),
      Source(3, 'khsdv'),
      Source(4, 'sjdhv'),
      Source(5, 'sdhv'),
      Source(6, 'shetty'),
    ];
  }
}

class Destination {
  int id;
  String name;
  Destination(this.id, this.name);

  static List<Destination> getDestination() {
    return <Destination>[
      Destination(1, 'ganesh'),
      Destination(2, 'gaensh'),
      Destination(3, 'khsdv'),
      Destination(4, 'sjdhv'),
      Destination(5, 'sdhv'),
      Destination(6, 'shetty'),
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

  String _setImage() {
    String _mTitle = "${_selectedSource.name}";

    if (_mTitle == "ganesh") {
      return "assets/mobil_hello/goodmorrning.jpg";
    } else if (_mTitle == "shetty") {
      return "https://firebasestorage.googleapis.com/v0/b/sdmcet-assist.appspot.com/o/Dr%20S.G%20Ankaliki%20E%26E.jpg?alt=media&token=63cfed31-14c7-4ed9-a692-61edab8edaae";
    }

    print("_mTitle: $_mTitle"); // works
    // works
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
      body: new Container(
        child: Column(
          children: <Widget>[
            Text("select a Source"),
            SizedBox(height: 20.0),
            DropdownButton(
              items: _dropDownMenuItemsSource,
              onChanged: onChangeDropdownItemSource,
              value: _selectedSource,
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
            Image.network(_setImage())
          ],
        ),
      ),
    );
  }
}
