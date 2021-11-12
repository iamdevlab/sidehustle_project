import 'package:flutter/material.dart';
import 'package:sd_project/login/widgets/text_field2.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Welcome Onboard!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Lets work you through \nprogramming skills",
                  textAlign: TextAlign.center,
                ),
              ),
              TextFieldTwo(
                hintInput: "Enter your full name",
                isPassword: false,
              ),
              TextFieldTwo(
                hintInput: "Enter your email",
                isPassword: false,
              ),
              TextFieldTwo(
                hintInput: "Enter password",
                isPassword: true,
              ),
              TextFieldTwo(
                hintInput: "Confirm password",
                isPassword: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RichText(
                  text: TextSpan(
                      text: "Already have account?",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Sign Up",
                            style: TextStyle(color: Colors.green[800]))
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .70,
                  decoration: BoxDecoration(color: Colors.teal[400]),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Register",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// RichText(
//             text: TextSpan(
//               text: 'Hello ',
//               style: DefaultTextStyle.of(context).style,
//               children: <TextSpan>[
//                 TextSpan(text: 'Geeks', style: TextStyle(fontWeight: FontWeight.bold)),
//               ],
