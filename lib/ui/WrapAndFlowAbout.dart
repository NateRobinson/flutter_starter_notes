import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class WrapAndFlowAbout extends StatelessWidget {
  WrapAndFlowAbout({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CommonTitle('Wrap 介绍'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text("我们把超出屏幕显示范围会自动折行的布局称为流式布局。"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "例子：",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // 错误代码
            //Row(
            //children: <Widget>[Text("xxx" * 100)],
            //)
            Wrap(
              children: <Widget>[
                Container(
                  child: Text("我在 Wrap 布局中" * 10),
                  padding: EdgeInsets.all(16),
                )
              ],
            ),
            CommonTitle('高级 Wrap 例子'),
            Wrap(
              spacing: 8.0, // 主轴(水平)方向间距
              runSpacing: 4.0, // 纵轴（垂直）方向间距
              alignment: WrapAlignment.center, //沿主轴方向居中
              children: <Widget>[
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('A')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('M')),
                  label: new Text('Lafayette'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('H')),
                  label: new Text('Mulligan'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: new Text('Laurens'),
                ),
              ],
            ),
            CommonTitle('Flow 介绍'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "我们一般很少会使用Flow，因为其过于复杂，需要自己实现子widget的位置转换，在很多场景下首先要考虑的是Wrap是否满足需求。"),
            ),
            CommonTitle('Flow 例子'),
            Flow(
              delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
              children: <Widget>[
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.red,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.green,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.blue,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.yellow,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.brown,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.purple,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  getSize(BoxConstraints constraints) {
    //指定Flow的大小
    return Size(double.infinity, 200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
