import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyHomes.dart';

class MHSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search location"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "COLLEGE",
    "GANDHINAGAR",
    "YALAKKI SHETTER COLONY",
    "SDM DENTAL COLLEGE",
    "NAVANAGAR",
    "ISHWARNAGAR",
    "BHAIRIDEVARAKOPPA",
    "PRESIDENT HOTEL",
    "UNKAL CROSS",
    "BVBCET",
    "KMC",
    "INDIRA GLASS HOUSE",
    "LAMINGTON SCHOOL",
    "RAILWAY STATION(HEAD POST OFFICE)",
    "KESHWAPUR CIRCLE",
    "MADHURA COLONY BUS STOP",
    "HUBLI DHARWAD ONE OFFICE",
    "GOVT SCHOOL(NEAR RAMESH BHAWAN)",
    "SHANTINAGAR BUS STOP",
    "KAHDI GRAMODYOG(GOPANKOPPA)",
    "LIONS SCHOOL VIJAYANAGAR",
    "SHRI.MARUTI TEMPLE(NEAR SUB-JAIL)",
    "PRESIDENT HOTEL",
    "SIDDARODHA MATT",
    "TYENGAR BAKERY JUNCTION",
    "MURDESHWAR CERAMICS",
    "KEC",
    "WATER TANK(SILVER TOWN)",
    "MANJUNATH NAGAR BUS STOP",
    "BASAVESHWAR NAGAR BUS STOP",
    "AKSHAY PARK SIGNAL",
    "GANAPATI TEMPLE RAVINAGARA",
    "CHETAN COLLEGE",
    "SIRUR PARK SIGNAL",
    "KADASIDDESHAWR ARTS COLLEGE",
    "college",
    "gandhinagar",
    "yalakki shetter colony",
    "sdm dental college",
    "navanagar",
    "ishwarnagar",
    "bhairidevarakoppa",
    "president hotel",
    "unkal cross",
    "bvbcet",
    "kmc",
    "indira glass house",
    "lamington school",
    "railway station(head post office)",
    "keshwapur circle",
    "madhura colony bus stop",
    "hubli dharwad one office",
    "govt school(near ramesh bhawan)",
    "shantinagar bus stop",
    "kahdi gramodyog(gopankoppa)",
    "lions school vijayanagar",
    "shri.maruti temple(near sub-jail)",
    "president hotel",
    "siddarodha matt",
    "tyengar bakery junction",
    "murdeshwar ceramics",
    "kec",
    "water tank(silver town)",
    "manjunath nagar bus stop",
    "basaveshwar nagar bus stop",
    "akshay park signal",
    "ganapati temple ravinagara",
    "chetan college",
    "sirur park signal",
    "kadasiddeshawr arts college",
    "College",
    "Gandhinagar",
    "Yalakki Shetter Colony",
    "Sdm Dental College",
    "Navanagar",
    "Ishwarnagar",
    "Bhairidevarakoppa",
    "President Hotel",
    "Unkal Cross",
    "Bvbcet",
    "Kmc",
    "Indira Glass House",
    "Lamington School",
    "Railway Station(Head Post Office)",
    "Keshwapur Circle",
    "Madhura Colony Bus Stop",
    "Hubli Dharwad One Office",
    "Govt School(Near Ramesh Bhawan)",
    "Shantinagar Bus Stop",
    "Kahdi Gramodyog(Gopankoppa)",
    "Lions School Vijayanagar",
    "Shri.maruti Temple(Near Sub-jail)",
    "President Hotel",
    "Siddarodha Matt",
    "Tyengar Bakery Junction",
    "Murdeshwar Ceramics",
    "Kec",
    "Water Tank(Silver Town)",
    "Manjunath Nagar Bus Stop",
    "Basaveshwar Nagar Bus Stop",
    "Akshay Park Signal",
    "Ganapati Temple Ravinagara",
    "Chetan College",
    "Sirur Park Signal",
    "Kadasiddeshawr Arts College"
  ];

  final recentCities = [
    "these are the most recetly searched places",
    "SEARCH FORMAT CAN BE: Upper Case/ Lower Case/ Title Case",
    "bvbcet",
    "vidyagiri",
    "gandhinagar"
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
            MaterialPageRoute(builder: (context) => TeachersTimeTables()),
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
