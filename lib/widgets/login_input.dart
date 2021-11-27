import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  Icon? icon;
  String? hinttext;
  bool? boolValue;
  TextEditingController? textEditingController;

  InputField(
      {Key? key,
      this.icon,
      this.hinttext,
      this.boolValue,
      this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        controller: textEditingController,
        obscureText: boolValue!,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hinttext,
        ),
      ),
    );
  }
}
