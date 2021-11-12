import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sd_project/login/widgets/tile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 80,
                          width: 70,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: const CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage("assets/vader.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Group 15",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "group15@intership.ng",
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Side Hustle 4.0 internship",
                                style: TextStyle(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "General",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            InfoTile(
              leading_icon: Icon(
                EvaIcons.person,
                color: Colors.blue[800],
              ),
              title: Text("Edit Profile"),
              trailing_icon: Icon(EvaIcons.arrowIosForward),
            ),
            InfoTile(
              leading_icon: Icon(
                EvaIcons.briefcase,
                color: Colors.blue[800],
              ),
              title: Text("Badges"),
              trailing_icon: Icon(EvaIcons.arrowIosForward),
            ),
            InfoTile(
              leading_icon: Icon(
                Icons.add_circle_outline,
                color: Colors.blue[800],
              ),
              title: Text("Study Goals"),
              trailing_icon: Icon(EvaIcons.arrowIosForward),
            ),
            InfoTile(
              leading_icon: Icon(
                Icons.notifications_off,
                color: Colors.blue[800],
              ),
              title: Text("Focus Mode"),
              trailing_icon: Icon(EvaIcons.arrowIosForward),
            ),
            InfoTile(
              leading_icon: Icon(
                Icons.redo_rounded,
                color: Colors.blue[800],
              ),
              title: Text("School Schedule"),
              trailing_icon: Icon(EvaIcons.arrowIosForward),
            ),
            InfoTile(
              leading_icon: Icon(
                Icons.people,
                color: Colors.blue[800],
              ),
              title: Text("Invite Friends"),
              trailing_icon: Icon(EvaIcons.arrowIosForward),
            ),
          ],
        ),
      ),
    );
  }
}
