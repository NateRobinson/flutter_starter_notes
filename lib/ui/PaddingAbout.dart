import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class PaddingAbout extends StatelessWidget {
  PaddingAbout({Key key, this.title});

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
            CommonTitle('Padding 介绍'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text("Padding 可以给其子节点添加补白（填充）。"),
            ),
            Padding(
              //上下左右各添加16像素补白
              padding: EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  //显式指定对齐方式为左对齐，排除对齐干扰
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      child: Padding(
                        //左边添加8像素补白
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("左 padding 8"),
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: Padding(
                        //上下各添加8像素补白
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("上下 padding 8"),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: Padding(
                        // 分别指定四个方向的补白
                        padding:
                            const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                        child: Text("左上右下 padding ： 20，0，20，20"),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
