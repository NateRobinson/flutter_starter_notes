import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class RowAndColumnAbout extends StatelessWidget {
  RowAndColumnAbout({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          //测试Row对齐方式，排除Column默认居中对齐的干扰
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
          children: <Widget>[
            CommonTitle('Row - 主轴对齐方式：center，主轴大小：max'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text("Item 1"),
                  color: Colors.blue,
                ),
                Container(child: Text("Item 2"), color: Colors.red),
              ],
            ),
            CommonTitle('Row - 主轴对齐方式：center，主轴大小：min'),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text("Item 1"),
                  color: Colors.blue,
                ),
                Container(child: Text("Item 2"), color: Colors.red),
              ],
            ),
            CommonTitle('Row - 主轴对齐方式：end，文字方向：rtl'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                  child: Text("Item 1"),
                  color: Colors.blue,
                ),
                Container(child: Text("Item 2"), color: Colors.red),
              ],
            ),
            CommonTitle('Row - 副轴对齐方式：start，纵轴方向：up'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Container(
                  child: Text(
                    "Item 1",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  color: Colors.blue,
                ),
                Container(child: Text("Item 2"), color: Colors.red),
              ],
            ),
            CommonTitle('Row - 副轴对齐方式：end，纵轴方向：down'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Container(
                  child: Text(
                    "Item 1",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  color: Colors.blue,
                ),
                Container(child: Text("Item 2"), color: Colors.red),
              ],
            ),
            CommonTitle('Column - Column 嵌套 Column'),
            Container(
              color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度
                children: <Widget>[
                  Container(
                    child: Text("Item 1"),
                    color: Colors.blue,
                  ),
                  Container(child: Text("Item 2"), color: Colors.red),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
