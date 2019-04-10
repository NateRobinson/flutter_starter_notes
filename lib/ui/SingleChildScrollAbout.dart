import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class SingleChildScrollAbout extends StatelessWidget {
  SingleChildScrollAbout({Key key, this.title});

  final String title;
  final String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CommonTitle('SingleChildScrollAbout 介绍与示例'),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                    "SingleChildScrollView类似于Android中的ScrollView，它只能接收一个子Widget。"),
              ),
              Column(
                //动态创建一个List<Widget>
                children: str
                    .split("")
                    //每一个字母都用一个Text显示,字体为原来的两倍
                    .map((c) => Text(
                          c,
                          textScaleFactor: 2.0,
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}