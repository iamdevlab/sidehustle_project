import 'package:flutter/material.dart';
import 'package:sd_project/widgets/text_field2.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        //SingleChildscrollview enables a scrollable screen
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),

              //welcome text wrapped in padding widgets
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Welcome Onboard!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),

              //sub welcome text wrapped in padding widgets
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Lets work you through \nprogramming skills",
                  textAlign: TextAlign.center,
                ),
              ),

              /**
               * class returning a textfield, the textfiels has been 
               * extracted to avoid redundancy and maintain consistency 
               */
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

              /**
               * The richtext widget is used to combine multiple text 
               * widget using the textspan, this allows for combining different
               * text which can have different properties
               */
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

              //this is a container whise child is a textbutton widget
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
