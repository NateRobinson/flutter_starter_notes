import 'package:flutter/material.dart';

class ListViewFixedTop extends StatelessWidget {
  ListViewFixedTop({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(children: <Widget>[
        Container(
            width: double.infinity,
            height: 60,
            color: Colors.grey,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16),
            child: Text("商品列表")),
        Expanded(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text("$index"));
              }),
        ),
      ]),
    );
  }
}
