import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  final title;

  CommonTitle(this.title, {Key key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      color: Colors.grey[200],
      height: 30,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
    );
  }
}
