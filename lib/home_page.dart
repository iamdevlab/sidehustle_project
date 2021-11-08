import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            child: Icon(
              EvaIcons.person,
              size: 100,
              color: Colors.blue[850],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "GROUP 15",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  EvaIcons.email,
                  color: Colors.red[800],
                ),
              ),
              Text(
                "primedcoderz@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
          // SizedBox(
          //     //height: 500,
          //     ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Connect with us on: "),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  EvaIcons.facebook,
                  color: Colors.blue[800],
                ),
              ),
              Text(
                "facebook.com/iamdevlab",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  EvaIcons.twitter,
                  color: Colors.blue[400],
                ),
              ),
              Text(
                "@grimconscript",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[800],
                ),
              ),
            ],
          ),
          // ListTile(
          //   leading: Icon(EvaIcons.email),
          //   title: Text(
          //     "primedcoderz@gmail.com",
          //     style: TextStyle(
          //       fontSize: 18,
          //       color: Colors.blue[800],
          //     ),
          //   ),
          // ),
          // ListTile(
          //   leading: Icon(
          //     EvaIcons.facebook,
          //     color: Colors.blue[800],
          //   ),
          //   title: Text(
          //     "facebook.com/iamdevlab",
          //     style: TextStyle(
          //       fontSize: 18,
          //       color: Colors.blue[800],
          //     ),
          //   ),
          // ),
          // ListTile(
          //   leading: Icon(
          //     EvaIcons.twitter,
          //     color: Colors.blue[400],
          //   ),
          //   title: Text(
          //     "@grimconscript",
          //     style: TextStyle(
          //       fontSize: 18,
          //       color: Colors.blue[800],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
