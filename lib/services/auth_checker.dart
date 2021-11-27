// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:sd_project/home_page.dart';
import 'package:sd_project/login/login_page.dart';
import 'package:sd_project/model/user_nfo.dart';
import 'package:sd_project/services/firebase_auth.dart';

class AuthenticationChecker extends StatelessWidget {
  const AuthenticationChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<FireBaseAuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? LoginPage() : HomePage();
          } else {
            return Scaffold(
                body: Center(
                    child: SpinKitCircle(
              size: 100,
              color: Colors.orange,
            )));
          }
        });
  }
}
