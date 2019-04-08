import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/ui/ButtonAbout.dart';
import 'package:flutter_starter_notes/ui/FlexAbout.dart';
import 'package:flutter_starter_notes/ui/HomePage.dart';
import 'package:flutter_starter_notes/ui/ImageAndIconAbout.dart';
import 'package:flutter_starter_notes/ui/InputAndFormAbout.dart';
import 'package:flutter_starter_notes/ui/PaddingAbout.dart';
import 'package:flutter_starter_notes/ui/RowAndColumnAbout.dart';
import 'package:flutter_starter_notes/ui/StackAndPositionedAbout.dart';
import 'package:flutter_starter_notes/ui/SwitchAndCheckBoxAbout.dart';
import 'package:flutter_starter_notes/ui/TextAbout.dart';
import 'package:flutter_starter_notes/ui/WrapAndFlowAbout.dart';

class RouterConfig {
  static Map<String, String> namesForRouter = {
    '/textabout': "文本及字体样式",
    '/buttonabout': "按钮",
    '/imageandiconabout': "图片及 Icon",
    '/switchandcheckboxabout': "单选开关和复选框",
    '/inputandformabout': "输入框及表单",
    '/rowandcolumnabout': "线性布局 Row, Column",
    '/flexabout': "弹性布局 Flex",
    '/wrapandflowabout': "流式布局 Wrap, Flow",
    '/stackandpositionedabout': "层叠布局 Stack, Positioned",
    '/paddingabout': "Padding",
  };

  static Map<String, WidgetBuilder> routers = {
    '/': (context) => HomePage(),
    '/textabout': (context) => TextAbout(
          title: namesForRouter['/textabout'],
        ),
    '/buttonabout': (context) => ButtonAbout(
          title: namesForRouter['/buttonabout'],
        ),
    '/imageandiconabout': (context) => ImageAndIconAbout(
          title: namesForRouter['/imageandiconabout'],
        ),
    '/switchandcheckboxabout': (context) => SwitchAndCheckBoxAbout(
          title: namesForRouter['/switchandcheckboxabout'],
        ),
    '/inputandformabout': (context) => InputAndFormAbout(
          title: namesForRouter['/inputandformabout'],
        ),
    '/rowandcolumnabout': (context) => RowAndColumnAbout(
          title: namesForRouter['/rowandcolumnabout'],
        ),
    '/flexabout': (context) => FlexAbout(
          title: namesForRouter['/flexabout'],
        ),
    '/wrapandflowabout': (context) => WrapAndFlowAbout(
          title: namesForRouter['/wrapandflowabout'],
        ),
    '/stackandpositionedabout': (context) => StackAndPositionedAbout(
          title: namesForRouter['/stackandpositionedabout'],
        ),
    '/paddingabout': (context) => PaddingAbout(
          title: namesForRouter['/paddingabout'],
        ),
  };
}
