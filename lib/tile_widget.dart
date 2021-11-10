import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  Icon? leading_icon;
  Text? title;
  Icon? trailing_icon;

  InfoTile(
      {Key? key,
      required this.leading_icon,
      required this.title,
      required this.trailing_icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            leading: leading_icon,
            title: title,
            trailing: trailing_icon,
          )),
    );
  }
}
