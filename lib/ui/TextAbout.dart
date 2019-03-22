import 'package:flutter/material.dart';

class TextAbout extends StatelessWidget {
  TextAbout({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: new Text('Text about'),
      ),
    );
  }
}
