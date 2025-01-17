import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sdmcetassist/screens/home/insidehome/about.dart';
import 'package:sdmcetassist/screens/home/insidehome/aboutDeveloper.dart';
import 'package:sdmcetassist/screens/home/insidehome/administration.dart';
import 'package:sdmcetassist/screens/home/insidehome/contacts.dart';
import 'package:sdmcetassist/screens/home/insidehome/food.dart';
import 'package:sdmcetassist/screens/home/insidehome/notice.dart';
import 'package:sdmcetassist/screens/home/insidehome/placement.dart';
import 'package:sdmcetassist/screens/home/insidehome/transport.dart';
import 'package:sdmcetassist/screens/home/insidehome/navigation.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'insidehome/department.dart';
import 'package:sdmcetassist/services/auth.dart';

import 'insidehome/insideExaminationSection/examinationSection.dart';
import 'insidehome/insideImage/sdmImage.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'SDMCET Assist', /*style:TextStyle(color:Colors.black)*/
        ),
        elevation: 10.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        curve: Curves.easeIn,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
              child: Icon(Icons.code),
              label: "About DEV",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutDeveloper()));
              }),
          SpeedDialChild(
              child: Icon(Icons.system_update),
              label: "Check for Update\nCurrent version:1.0.0",
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1HEV_Y3rv9amnEES67vkuSvhR-R8t2kRE");
              }),
          SpeedDialChild(
              child: Icon(Icons.share),
              label: "Share this App",
              onTap: () {
                Share.share(
                    "Download this app: https://drive.google.com/open?id=1HEV_Y3rv9amnEES67vkuSvhR-R8t2kRE");
              })
        ],
      ),
      drawer: new Drawer(
          elevation: 100,
          child: Container(
            color: Colors.blue[100],
            child: ListView(
              padding: EdgeInsets.only(bottom: 200, top: 30),
              children: <Widget>[
                Container(
                  //padding: EdgeInsets.all(20.0),
                  height: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: ExactAssetImage('assets/madebycse.jpg'),
                    fit: BoxFit.fitHeight,
                  )),
                ),
                ListTile(
                  leading: Icon(
                    Icons.public,
                    color: Colors.black,
                  ),
                  title: Text(" College's Official Website"),
                  onTap: () {
                    launch('https://sdmcet.ac.in');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                  ),
                  title: Text("Linkedin"),
                  onTap: () {
                    launch(
                        'https://www.linkedin.com/school/sdm-college-of-engg-&-tech-dharwad/about/');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  ),
                  title: Text("College's Youtube channel"),
                  onTap: () {
                    launch(
                        'https://www.youtube.com/channel/UCYuupsA7tts1Edy0kotGTUg');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.purple,
                  ),
                  title: Text("officialinsignia"),
                  onTap: () {
                    launch('https://www.instagram.com/officialinsignia/');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.facebookSquare,
                    color: Colors.blue,
                  ),
                  title: Text("SDMCET"),
                  onTap: () {
                    launch(
                        'https://m.facebook.com/profile.php?id=108137289220258');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.facebookSquare,
                    color: Colors.blue,
                  ),
                  title: Text("Sdmcet Alumni"),
                  onTap: () {
                    launch('https://www.facebook.com/sdmcetalumni/');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.facebookSquare,
                    color: Colors.blue,
                  ),
                  title: Text("SDMCET Media Official"),
                  onTap: () {
                    launch('https://www.facebook.com/SDMCETMEDIAOFFICIAL/');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: Colors.red,
                  ),
                  title: Text("Google Maps Location"),
                  onTap: () {
                    launch('https://goo.gl/maps/eEy8Y7Q11DnQTvvu7');
                  },
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.code,
                    color: Colors.black,
                  ),
                  title: Text("About Developer"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutDeveloper()));
                  },
                ),
              ],
            ),
          )),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            HomeCard(
              route: About(),
              icon: Icons.account_balance,
              text: "About",
            ),
            HomeCard(
              route: Administration(),
              icon: Icons.collections_bookmark,
              text: "Admin",
            ),
            HomeCard(
              route: Department(),
              icon: Icons.school,
              text: "Academics",
            ),
            HomeCard(
              route: Contacts(),
              icon: Icons.contact_phone,
              text: "Contacts",
            ),
            HomeCard(
              route: Placement(),
              icon: Icons.card_travel,
              text: "Placement",
            ),
            HomeCard(
              route: ExaminationSec(),
              icon: Icons.content_paste,
              text: "Exam Section",
            ),
            HomeCard(
              route: MainScreenTransport(),
              icon: Icons.departure_board,
              text: "Bus",
            ),
            HomeCard(
              route: Notice(),
              icon: Icons.notification_important,
              text: "Notice",
            ),
            HomeCard(
              route: Navigation(),
              icon: Icons.add_location,
              text: "Navigation",
            ),
            HomeCard(
              route: Food(),
              icon: Icons.add_location,
              text: "Food",
            ),
            HomeCard(
              route: SdmImages(),
              icon: Icons.camera_enhance,
              text: "SDMCET Images",
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  var route;
  IconData icon;
  String text;
  HomeCard({
    this.icon,
    this.route,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        splashColor: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 50.0,
              ),
              Text(text,
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
