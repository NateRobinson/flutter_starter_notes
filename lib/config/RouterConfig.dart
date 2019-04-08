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
  static Map<String, String> keys = {
    "basic": "基础 Widgets",
    "layout": "布局类 Widgets",
    "container": "容器类 Widgets",
  };

  static List<RouterBean> allRoutes = [
    RouterBean(
      "/",
      "首页",
      "",
      (context) => HomePage(),
    ),
    RouterBean(
      "/textabout",
      "文本及字体样式",
      "basic",
      (context) => TextAbout(
            title: "文本及字体样式",
          ),
    ),
    RouterBean(
      "/buttonabout",
      "按钮",
      "basic",
      (context) => ButtonAbout(
            title: "按钮",
          ),
    ),
    RouterBean(
      "/imageandiconabout",
      "图片及 Icon",
      "basic",
      (context) => ImageAndIconAbout(
            title: "图片及 Icon",
          ),
    ),
    RouterBean(
      "/switchandcheckboxabout",
      "单选开关和复选框",
      "basic",
      (context) => SwitchAndCheckBoxAbout(
            title: "单选开关和复选框",
          ),
    ),
    RouterBean(
      "/inputandformabout",
      "输入框及表单",
      "basic",
      (context) => InputAndFormAbout(
            title: "输入框及表单",
          ),
    ),
    RouterBean(
      "/rowandcolumnabout",
      "线性布局 Row, Column",
      "layout",
      (context) => RowAndColumnAbout(
            title: "线性布局 Row, Column",
          ),
    ),
    RouterBean(
      "/flexabout",
      "弹性布局 Flex",
      "layout",
      (context) => FlexAbout(
            title: "弹性布局 Flex",
          ),
    ),
    RouterBean(
      "/wrapandflowabout",
      "流式布局 Wrap, Flow",
      "layout",
      (context) => WrapAndFlowAbout(
            title: "流式布局 Wrap, Flow",
          ),
    ),
    RouterBean(
      "/stackandpositionedabout",
      "层叠布局 Stack, Positioned",
      "layout",
      (context) => StackAndPositionedAbout(
            title: "层叠布局 Stack, Positioned",
          ),
    ),
    RouterBean(
      "/paddingabout",
      "Padding",
      "container",
      (context) => PaddingAbout(
            title: "Padding",
          ),
    ),
  ];

  static Map<String, WidgetBuilder> genRouters() {
    Map<String, WidgetBuilder> result = {};
    allRoutes.forEach((item) => {result[item.router] = item.widgetBuilder});
    return result;
  }

  static List<HomeMenuItem> genMenus() {
    List<HomeMenuItem> menus = [];

    for (var value in keys.keys) {
      List<HomeMenuChildItem> widgetsItems = allRoutes
          .where((item) => item.typeKey == value)
          .map((item) => HomeMenuChildItem(item.name, item.router)).toList();
      menus.add(HomeMenuItem(false, keys[value], widgetsItems));
    }

    return menus;
  }
}

class RouterBean {
  String router;
  String name;
  String typeKey;
  WidgetBuilder widgetBuilder;

  RouterBean(
      String router, String name, String typeKey, WidgetBuilder widgetBuilder) {
    this.router = router;
    this.name = name;
    this.typeKey = typeKey;
    this.widgetBuilder = widgetBuilder;
  }
}

class HomeMenuItem {
  bool isOpen; // 0 - title 1 - normal item
  String title;
  List<HomeMenuChildItem> items;

  HomeMenuItem(bool isOpen, String title, List<HomeMenuChildItem> items) {
    this.isOpen = isOpen;
    this.title = title;
    this.items = items;
  }
}

class HomeMenuChildItem {
  String name;
  String router;

  HomeMenuChildItem(String name, String router) {
    this.name = name;
    this.router = router;
  }
}
