import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextAbout extends StatelessWidget {
  TextAbout({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              'Text 基础',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            color: Colors.grey[200],
            height: 30,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text(
              "左对齐" * 10,
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text(
              "右对齐" * 10,
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text(
              "居中对齐" * 10,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text(
              "单行文本，超出部分以省略号结尾。" * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text(
              "我被放大了1.5倍",
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            child: Text(
              'TextStyle',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            color: Colors.grey[200],
            height: 30,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text(
              "自定义 TextStyle 的文字",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  // 【Note:】该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于fontSize*height
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
          ),
          Container(
            child: Text(
              'TextSpan: 富文本的 Text ，可点击超链接之类',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            color: Colors.grey[200],
            height: 30,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text.rich(TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    print("click url");
                  },
              ),
            ])),
          ),
          Container(
            child: Text(
              'DefaultTextStyle',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            color: Colors.grey[200],
            height: 30,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("我的样式继承自 DefaultTextStyle"),
                  Text("我的样式继承自 DefaultTextStyle"),
                  Text(
                    "我的样式我作主，不再继承 DefaultTextStyle",
                    style: TextStyle(
                        inherit: false, // 不继承默认样式
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              '自定义字体-from asset',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            color: Colors.grey[200],
            height: 30,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Text(
              "Germania One Font",
              style: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
