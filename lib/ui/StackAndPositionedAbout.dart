import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class StackAndPositionedAbout extends StatelessWidget {
  StackAndPositionedAbout({Key key, this.title});

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
            CommonTitle('层叠布局 介绍'),
            Container(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Text(
                  "层叠布局和Web中的绝对定位、Android中的Frame布局是相似的，子widget可以根据到父容器四个角的位置来确定本身的位置。"),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "绝对定位允许子widget堆叠（按照代码中声明的顺序）。Flutter中使用Stack和Positioned来实现绝对定位，Stack允许子widget堆叠，而Positioned可以给子widget定位（根据Stack的四个角"),
            ),
            CommonTitle('Stack, Positioned 示例 - 未设置 fit'),
            //通过ConstrainedBox来确保Stack占满屏幕
            Container(
              height: 200,
              width: double.infinity, // 撑满宽度
              color: Colors.cyan,
              child: Stack(
                alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
                children: <Widget>[
                  Container(
                    child:
                        Text("默认居中显示", style: TextStyle(color: Colors.white)),
                    color: Colors.red,
                  ),
                  Positioned(
                    left: 18.0,
                    child: Text("距离左边 18"),
                  ),
                  Positioned(
                    top: 18.0,
                    child: Text("距离顶部 18"),
                  )
                ],
              ),
            ),
            CommonTitle('Stack, Positioned 示例 - 设置 fit'),
            Container(
              height: 200,
              width: double.infinity, // 撑满宽度
              color: Colors.cyan, // 这个颜色被遮住
              child: Stack(
                alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
                fit: StackFit.expand, //未定位widget占满Stack整个空间
                children: <Widget>[
                  Container(
                    child: Text("居中显示，但和上面的不一样",
                        style: TextStyle(color: Colors.white)),
                    alignment: Alignment.center,
                    color: Colors.red,
                  ),
                  Positioned(
                    left: 18.0,
                    child: Text("距离左边 18"),
                  ),
                  Positioned(
                    top: 18.0,
                    child: Text("距离顶部 18"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
