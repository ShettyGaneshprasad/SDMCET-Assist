import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyHome1.dart';

class MDSearch1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search location"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch1());
              })
        ],
      ),
    );
  }
}

class DataSearch1 extends SearchDelegate<String> {
  final cities = [
    "COLLEGE",
    "TOLL NAKA",
    "BAGALKOT PETROL PUMP",
    "YEMMIKERI",
    "HEAD POST",
    "COURT CIRCLE",
    "KCD",
    "T.V.TOWER",
    "DASANKOPP CIRCLE",
    "VINAYAK NAGAR",
    "BHARATI NAGAR",
    "SAPTAPUR",
    "JAYANAGAR",
    "SRINAGAR",
    "R.K.NAGAR",
    "C.B.NAGAR",
    "SHIVAGIRI",
    "NIRMAL NAGAR CHURCH",
    "PAVAN SCHOOL",
    "KAREMMA TEMPLE",
    "UDAY HOSTEL",
    "KESHAV NAGAR",
    "RAILWAY STATION",
    "OLD DSP CIRCLE",
    "M G BANK",
    "POLICE H Q",
    "SAMPIGENAGAR",
    "SADHANKERI",
    "GERMAN HOSPITAL",
    "NARYANPUR",
    "DASANKOPP CIRCLE",
    "MRUTUNJAY NAGAR",
    "MURGAMATH",
    "SHIVAJI CIRCLE",
    "MARATHA COLONY",
    "DURGA TEMPLE CROSS",
    "OLD SP CIRCLE",
    "CBT",
    "GANDHI CHOUK",
    "JUBLI CIRCLE",
    "NTTF",
    "college",
    "toll naka",
    "bagalkot petrol pump",
    "yemmikeri",
    "head post",
    "court circle",
    "kcd",
    "t.v.tower",
    "dasankopp circle",
    "vinayak nagar",
    "bharati nagar",
    "saptapur",
    "jayanagar",
    "srinagar",
    "r.k.nagar",
    "c.b.nagar",
    "shivagiri",
    "nirmal nagar church",
    "pavan school",
    "karemma temple",
    "uday hostel",
    "keshav nagar",
    "railway station",
    "old dsp circle",
    "m g bank",
    "police h q",
    "sampigenagar",
    "sadhankeri",
    "german hospital",
    "naryanpur",
    "dasankopp circle",
    "mrutunjay nagar",
    "murgamath",
    "shivaji circle",
    "maratha colony",
    "durga temple cross",
    "old sp circle",
    "cbt",
    "gandhi chouk",
    "jubli circle",
    "nttf",
    "College",
    "Toll Naka",
    "Bagalkot Petrol Pump",
    "Yemmikeri",
    "Head Post",
    "Court Circle",
    "Kcd",
    "T.v.tower",
    "Dasankopp Circle",
    "Vinayak Nagar",
    "Bharati Nagar",
    "Saptapur",
    "Jayanagar",
    "Srinagar",
    "R.k.nagar",
    "C.b.nagar",
    "Shivagiri",
    "Nirmal Nagar Church",
    "Pavan School",
    "Karemma Temple",
    "Uday Hostel",
    "Keshav Nagar",
    "Railway Station",
    "Old Dsp Circle",
    "M G Bank",
    "Police H Q",
    "Sampigenagar",
    "Sadhankeri",
    "German Hospital",
    "Naryanpur",
    "Dasankopp Circle",
    "Mrutunjay Nagar",
    "Murgamath",
    "Shivaji Circle",
    "Maratha Colony",
    "Durga Temple Cross",
    "Old Sp Circle",
    "Cbt",
    "Gandhi Chouk",
    "Jubli Circle",
    "Nttf",
  ];

  final recentCities = [
    "these are the most recetly searched places",
    "SEARCH FORMAT CAN BE: Upper Case/ Lower Case/ Title Case",
    "cbt",
    "head post",
    "dasankoppa"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    //  actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    // leading icon on the left of app bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    //show result based on selection

    return Card(
      elevation: 10,
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHome1()),
          );
        },
        splashColor: Colors.lightBlueAccent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Text(
                query,
                style: new TextStyle(fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
              fit: FlexFit.tight,
            )
          ],
        ),

        // child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    // show suggestion
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey)),
              ] //children
              ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
