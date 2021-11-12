import 'package:flutter/material.dart';

class TextFieldTwo extends StatelessWidget {
  String? hintInput;
  bool isPassword;

  TextFieldTwo({Key? key, this.hintInput, required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixText: "     ",
          filled: true,
          fillColor: Colors.white,
          hintText: hintInput,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
    );
  }
}
