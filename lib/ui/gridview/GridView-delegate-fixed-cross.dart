import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class GridViewDelegateFixedCross extends StatelessWidget {
  GridViewDelegateFixedCross({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          CommonTitle('SliverGridDelegateWithFixedCrossAxisCount 介绍'),
          Container(
            padding: EdgeInsets.all(16),
            child: Text("该子类实现了一个横轴为固定数量子元素的layout算法。"),
          ),
          Expanded(
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, //横轴三个子widget
                    childAspectRatio: 1.0 //宽高比为1时，子widget
                    ),
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.airport_shuttle),
                  Icon(Icons.all_inclusive),
                  Icon(Icons.beach_access),
                  Icon(Icons.cake),
                  Icon(Icons.free_breakfast)
                ]),
          ),
        ],
      ),
    );
  }
}
