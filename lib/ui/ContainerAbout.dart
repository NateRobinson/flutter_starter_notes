import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class ContainerAbout extends StatelessWidget {
  ContainerAbout({Key key, this.title});

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
            CommonTitle('Container 介绍'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "Container是我们要介绍的最后一个容器类widget，它本身不对应具体的RenderObject，它是DecoratedBox、ConstrainedBox、Transform、Padding、Align等widget的一个组合widget。所以我们只需通过一个Container可以实现同时需要装饰、变换、限制的场景。"),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0, left: 120.0, bottom: 100.0),
              //容器外补白
              constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
              //卡片大小
              decoration: BoxDecoration(
                  //背景装饰
                  gradient: RadialGradient(
                      //背景径向渐变
                      colors: [Colors.red, Colors.orange],
                      center: Alignment.topLeft,
                      radius: .98),
                  boxShadow: [
                    //卡片阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0)
                  ]),
              transform: Matrix4.rotationZ(.2),
              //卡片倾斜变换
              alignment: Alignment.center,
              //卡片内文字居中
              child: Text(
                //卡片文字
                "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            ),
            CommonTitle('Padding和Margin 比较'),
            Container(
              margin: EdgeInsets.all(20.0), //容器外补白
              color: Colors.orange,
              child: Text("Margin 20"),
            ),
            Container(
              padding: EdgeInsets.all(20.0), //容器内补白
              color: Colors.orange,
              child: Text("Padding 20"),
            ),
          ],
        ),
      ),
    );
  }
}
