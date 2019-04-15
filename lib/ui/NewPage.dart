import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  NewPage({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          color: Colors.amber.shade400,
          alignment: Alignment.center,
          child: Text(
            "New Page",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ));
  }
}
