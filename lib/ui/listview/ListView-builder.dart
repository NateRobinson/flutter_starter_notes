import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text("$index"),
              )),
    );
  }
}
