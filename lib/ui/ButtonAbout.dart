import 'package:flutter/material.dart';

class ButtonAbout extends StatelessWidget {
  ButtonAbout({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Button'),
      ),
    );
  }
}
