// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../home_page.dart';
import '../login/login_page.dart';
import 'auth_checker.dart';

class Routes {
  static const String authenticationChecker = '/';
  static const String loginPage = '/login-page';
  static const String homePage = '/home-page';
  static const all = <String>{
    authenticationChecker,
    loginPage,
    homePage,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.authenticationChecker, page: AuthenticationChecker),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.homePage, page: HomePage),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    AuthenticationChecker: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AuthenticationChecker(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomePage(),
        settings: data,
      );
    },
  };
}
