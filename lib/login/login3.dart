import 'package:flutter/material.dart';
import 'package:sd_project/widgets/text_input3.dart';

class LoginPage3 extends StatelessWidget {
  const LoginPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Colors.purple[900]!, Colors.purple[200]!])),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .40,
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  "Welcome \nBack",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextInputThree(
                        labelText: "Email Address",
                        boolValue: false,
                      ),
                      TextInputThree(
                        labelText: "Password",
                        boolValue: true,
                        icon: Icon(Icons.visibility),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text("Forgot password?",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.purple,
                                )),
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.purple[900]!,
                                  Colors.purple[200]!
                                ])),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
