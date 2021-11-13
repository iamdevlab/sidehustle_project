import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class TextInputThree extends StatefulWidget {
  String labelText;
  bool boolValue = true;
  Icon? icon;
  TextInputThree(
      {Key? key, required this.labelText, required this.boolValue, this.icon})
      : super(key: key);

  @override
  State<TextInputThree> createState() => _TextInputThreeState();
}

class _TextInputThreeState extends State<TextInputThree> {
  void _setPasswordToggle() {
    setState(() {
      widget.boolValue = !widget.boolValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: widget.boolValue,
        decoration: InputDecoration(
          label: Text(widget.labelText),
          suffixIcon: widget.icon,
        ),
      ),
    );
  }
}
