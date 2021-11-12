import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sd_project/login/widgets/login_input.dart';

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
                  backgroundColor: Colors.grey,
                  child: Text(
                    "LOGO",
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                ),
              ),

              //This text is the sign in text as seen in the ui design
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 28),
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
                icon: Icon(EvaIcons.person),
                hinttext: "Username",
                boolValue: false,
              ),
              InputField(
                icon: Icon(Icons.lock_open_rounded),
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
                    color: Colors.grey[500],
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
