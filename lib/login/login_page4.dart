// ignore_for_file: prefer_const_constructors

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class LoginPageFour extends StatelessWidget {
  const LoginPageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(130),
                    ),
                    image: DecorationImage(
                        image: new AssetImage('assets/pizza.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.amber[700]!.withOpacity(0.8),
                            BlendMode.dstIn)),
                  ),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: MediaQuery.of(context).size.height * .65,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 180),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 1, //spread radius
                  blurRadius: 20, // blur radius
                  offset: Offset(0, 0), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Icon(EvaIcons.twitter),
          ),
        )
        //Container()
      ],
    ));
  }
}
