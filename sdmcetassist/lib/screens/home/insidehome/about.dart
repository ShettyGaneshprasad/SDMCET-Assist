import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'insideAbout/visionMission.dart';
import 'insideAbout/sdmcet.dart';
import 'insideAbout/management.dart';
import 'insideAbout/deans.dart';

class About extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<About> with SingleTickerProviderStateMixin {
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
            title: Text("About"),
            bottom: menu(),
          ),
          body: TabBarView(
            children: [Sdmcet(), Management(), Deans(), Visionmission()],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return TabBar(
      tabs: [
        Tab(
          child: Flexible(child: Text("SDMCET")),
          icon: Icon(Icons.account_balance),
        ),
        Tab(
          child: Flexible(child: Text("Management")),
          icon: Icon(Icons.assignment),
        ),
        Tab(
          text: "Deans",
          icon: Icon(Icons.people),
        ),
        Tab(
          text: "Vission\nMission",
          icon: Icon(Icons.device_hub),
        ),
      ],
    );
  }
}
