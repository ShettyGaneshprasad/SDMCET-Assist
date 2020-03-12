import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  Navigation() : super();
  final String title = "Dropdown Menu";

  @override
  DropDownState createState() => DropDownState();
}

class Company {
  int id;
  String name;
  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'ganesh'),
      Company(2, 'gaensh'),
      Company(3, 'khsdv'),
      Company(4, 'sjdhv'),
      Company(5, 'sdhv'),
      Company(6, 'shetty'),
    ];
  }
}

class DropDownState extends State<Navigation> {
  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropDownMenuItems;
  Company _selectedCompany;

  @override
  void initState() {
    _dropDownMenuItems = buildDropdownmenuItems(_companies);
    _selectedCompany = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Company>> buildDropdownmenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(DropdownMenuItem(
        value: company,
        child: Text(company.name),
      ));
    }
    return items;
  }

  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
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
            Text("select a comany"),
            SizedBox(height: 20.0),
            DropdownButton(
              items: _dropDownMenuItems,
              onChanged: onChangeDropdownItem,
              value: _selectedCompany,
            ),
            SizedBox(height: 20.0),
            Text('selected: ${_selectedCompany.name}'),
          ],
        ),
      ),
    );
  }
}
