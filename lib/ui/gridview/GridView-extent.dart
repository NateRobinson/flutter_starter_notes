import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class GridViewExtent extends StatelessWidget {
  GridViewExtent({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          CommonTitle('GridView.extent 介绍'),
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
                "GridView.extent构造函数内部使用了SliverGridDelegateWithMaxCrossAxisExtent，我们通过它可以快速的创建纵轴子元素为固定最大长度的的GridView。"),
          ),
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 120.0,
              childAspectRatio: 2.0,
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.airport_shuttle),
                Icon(Icons.all_inclusive),
                Icon(Icons.beach_access),
                Icon(Icons.cake),
                Icon(Icons.free_breakfast),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
