import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'insideadmin/admission.dart';
import 'insideadmin/certificateFromAdmin.dart';
import 'insideadmin/onlinefeespayment.dart';

class Administration extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<Administration>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
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
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[300],
            title: Text("Administration"),
            bottom: menu(),
          ),
          body: TabBarView(children: [
            Admission(),
            OnlineFeesPayment(),
            CertificateFromAdmin(),
          ]),
        ),
      ),
    );
  }

  Widget menu() {
    return TabBar(
      tabs: [
        Tab(
          text: "Admission",
          icon: Icon(Icons.account_balance),
        ),
        Tab(
          text: "Online Fees Payment",
          icon: Icon(Icons.monetization_on),
        ),
        Tab(
          text: "Certificate from Admin",
          icon: Icon(Icons.assignment),
        ),
      ],
    );
  }
}
