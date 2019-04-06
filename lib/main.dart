import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_starter_notes/ui/ButtonAbout.dart';
import 'package:flutter_starter_notes/ui/HomePage.dart';
import 'package:flutter_starter_notes/ui/TextAbout.dart';
import 'package:flutter_starter_notes/ui/ImageAndIconAbout.dart';
import 'package:flutter_starter_notes/ui/SwitchAndCheckBoxAbout.dart';
import 'package:flutter_starter_notes/ui/InputAndFormAbout.dart';
import 'package:flutter_starter_notes/ui/RowAndColumnAbout.dart';
import 'package:flutter_starter_notes/ui/FlexAbout.dart';
import 'package:flutter_starter_notes/ui/WrapAndFlowAbout.dart';

void main() {
  debugPaintSizeEnabled = false; //打开视觉调试开关
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Starter Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/textabout': (context) => TextAbout(
              title: "Text 相关",
            ),
        '/buttonabout': (context) => ButtonAbout(
              title: "按钮相关",
            ),
        '/imageandiconabout': (context) => ImageAndIconAbout(
              title: "图片及 ICON 相关",
            ),
        '/switchandcheckboxabout': (context) => SwitchAndCheckBoxAbout(
              title: "单选开关和复选框相关",
            ),
        '/inputandformabout': (context) => InputAndFormAbout(
              title: "输入框及表单相关",
            ),
        '/rowandcolumnabout': (context) => RowAndColumnAbout(
              title: "Row 和 Colunm 相关",
            ),
        '/flexabout': (context) => FlexAbout(
              title: "弹性布局相关",
            ),
        '/wrapandflowabout': (context) => WrapAndFlowAbout(
              title: "流式布局相关",
            ),
      },
    );
  }
}
