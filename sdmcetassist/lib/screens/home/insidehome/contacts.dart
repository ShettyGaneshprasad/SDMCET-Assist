import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideContact/administrationContact.dart';
import 'package:sdmcetassist/screens/home/insidehome/insideContact/hodContact.dart';

class Contacts extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<Contacts> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[300],
            title: Text("Contacts"),
            bottom: menu(),
          ),
          body: TabBarView(
            children: [
              AdministrationContact(),
              HodContact(),
              HodContact(),
              HodContact()
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return TabBar(
      tabs: [
        Tab(
          child: Flexible(
              child: Text(
            "ADMIN",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.account_balance),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "HOD",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "Deans",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
            "Vission Mission",
            textAlign: TextAlign.center,
          )),
          icon: Icon(Icons.device_hub),
        ),
      ],
    );
  }
}
