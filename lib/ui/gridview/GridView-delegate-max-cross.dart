import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class GridViewDelegateMaxCross extends StatelessWidget {
  GridViewDelegateMaxCross({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          CommonTitle('SliverGridDelegateWithMaxCrossAxisExtent 介绍'),
          Container(
            padding: EdgeInsets.all(16),
            child: Text("该子类实现了一个横轴子元素为固定最大长度的layout算法。"),
          ),
          Expanded(
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 120.0, childAspectRatio: 2.0 //宽高比为2
                  ),
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
