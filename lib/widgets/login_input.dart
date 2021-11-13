import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  Icon? icon;
  String? hinttext;
  bool? boolValue;

  InputField({Key? key, this.icon, this.hinttext, this.boolValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        obscureText: boolValue!,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hinttext,
        ),
      ),
    );
  }
}
