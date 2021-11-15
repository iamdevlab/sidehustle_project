// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sd_project/widgets/login_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[50],
        /**
         * the body of a scaffold returns a SingleChildScrollView, 
         * because during keyboard focus, the screen rearranges widgets 
         * and of no provision  widget expansion, we will experience 
         * pixels overflow(an error that occurs when a part of widget 
         * cant fit the screen),
         * 
         */
        body: SingleChildScrollView(
          /**
           * Column containing all widgets for the login page ui
           * 
           */
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Colors.purple[700]!, Colors.deepOrange[200]!])),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),

                //Container that holds a CircularAvatar as child
                Container(
                  height: 120,
                  width: 120,
                  alignment: Alignment.center,

                  //circular avater is a widgets for displaying images
                  // in a circular pattern
                  child: const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/vader.jpg"),
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    ),
                  ),
                ),

                //This text is the sign in text as seen in the ui design
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),

                //The sized box widget is used here to create and empyt space between two wigets
                SizedBox(
                  height: 50,
                ),

                /**
                 * these InputFiels are classes that was seperated to avoid redundant code
                 * and also consistency. The inputField class is a stateless widget
                 * that returns a textfield. the construstor of the class passes 3 param
                 * one for the icon, a second for the hinttext, and a third to obscure text or not.
                 * as in oassword field, Please click on the InputFiels class using Ctrl+click to view the
                 * full class details
                 */
                InputField(
                  icon: Icon(EvaIcons.person, color: Colors.yellow),
                  hinttext: "Username",
                  boolValue: false,
                ),
                InputField(
                  icon: Icon(Icons.lock_open_rounded, color: Colors.yellow),
                  hinttext: "Password",
                  boolValue: true,
                ),

                /*This row will hold two text for the forget password 
                and signup, they will both be clickable in future
                */
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Flexible(child: Text("Forget Password?")),
                      Flexible(child: Text("Sign-Up")),
                    ],
                  ),
                ),

                /**
                 * this widget holds the button widgets for login,
                 * a textButton is wraped in a container widget 
                 * and given a boxdecoration property of border radius
                 * and background color
                 */
                Container(
                  width: MediaQuery.of(context).size.width * .50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.orange[600]!, Colors.orange[100]!]),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      )),
                ),
                Container(
                    height: 200,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(EvaIcons.google, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                EvaIcons.facebook,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
