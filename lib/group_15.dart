import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/ktip.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "GROUP 15",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.grey,
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('+234 8027 456 545'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.grey,
              child: ListTile(
                leading: Icon(Icons.mail),
                title: Text('group15@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Icon(
                  Icons.facebook,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
