import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sd_project/login/login2.dart';
import 'package:sd_project/login/login3.dart';
import 'package:sd_project/login/login_page.dart';
import 'package:sd_project/login/login_page4.dart';
import 'package:sd_project/services/firebase_auth.dart';
import 'package:sd_project/services/locator.dart';
import 'package:sd_project/services/router.router.dart';
import 'package:stacked_services/stacked_services.dart';

import 'home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FireBaseAuthService>(
          create: (_) => FireBaseAuthService(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
      ),
    );
  }
}
