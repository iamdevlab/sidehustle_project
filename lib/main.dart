import 'package:flutter/material.dart';
import 'package:sd_project/login/login2.dart';
import 'package:sd_project/login/login3.dart';
import 'package:sd_project/login/login_page.dart';
import 'package:sd_project/login/login_page4.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginPageFour(),
    );
  }
}
