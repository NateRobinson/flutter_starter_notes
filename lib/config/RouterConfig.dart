import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/ui/BasicAnimationStructureAbout.dart';
import 'package:flutter_starter_notes/ui/BoxAbout.dart';
import 'package:flutter_starter_notes/ui/ButtonAbout.dart';
import 'package:flutter_starter_notes/ui/ContainerAbout.dart';
import 'package:flutter_starter_notes/ui/CustomScrollViewAbout.dart';
import 'package:flutter_starter_notes/ui/DecoratedBoxAbout.dart';
import 'package:flutter_starter_notes/ui/EventBusAbout.dart';
import 'package:flutter_starter_notes/ui/FlexAbout.dart';
import 'package:flutter_starter_notes/ui/GestureAbout.dart';
import 'package:flutter_starter_notes/ui/GridViewAbout.dart';
import 'package:flutter_starter_notes/ui/HeroAnimationAbout.dart';
import 'package:flutter_starter_notes/ui/HomePage.dart';
import 'package:flutter_starter_notes/ui/ImageAndIconAbout.dart';
import 'package:flutter_starter_notes/ui/InheritedWidgetAbout.dart';
import 'package:flutter_starter_notes/ui/InputAndFormAbout.dart';
import 'package:flutter_starter_notes/ui/ListViewAbout.dart';
import 'package:flutter_starter_notes/ui/MaterialContainerAbout.dart';
import 'package:flutter_starter_notes/ui/NotificationAbout.dart';
import 'package:flutter_starter_notes/ui/PaddingAbout.dart';
import 'package:flutter_starter_notes/ui/PageChangeAnimationAbout.dart';
import 'package:flutter_starter_notes/ui/PointerEventAbout.dart';
import 'package:flutter_starter_notes/ui/RowAndColumnAbout.dart';
import 'package:flutter_starter_notes/ui/ScrollControllerAbout.dart';
import 'package:flutter_starter_notes/ui/SingleChildScrollAbout.dart';
import 'package:flutter_starter_notes/ui/StackAndPositionedAbout.dart';
import 'package:flutter_starter_notes/ui/SwitchAndCheckBoxAbout.dart';
import 'package:flutter_starter_notes/ui/TextAbout.dart';
import 'package:flutter_starter_notes/ui/ThemeAbout.dart';
import 'package:flutter_starter_notes/ui/TransformAbout.dart';
import 'package:flutter_starter_notes/ui/WillPopScopeAbout.dart';
import 'package:flutter_starter_notes/ui/WrapAndFlowAbout.dart';

class RouterConfig {
  static Map<String, String> keys = {
    "basic": "基础 Widgets",
    "layout": "布局类 Widgets",
    "container": "容器类 Widgets",
    "scroll": "可滚动 Widgets",
    "function": "功能型 Widgets",
    "eventAndNotification": "事件处理与通知",
    "animation": "动画",
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
    RouterBean(
      "/boxabout",
      "布局限制类容器 ConstrainedBox, SizeBox",
      "container",
      (context) => BoxAbout(
            title: "布局限制类容器 ConstrainedBox, SizeBox",
          ),
    ),
    RouterBean(
      "/decoratedboxabout",
      "装饰容器 DecoratedBox",
      "container",
      (context) => DecoratedBoxAbout(
            title: "装饰容器 DecoratedBox",
          ),
    ),
    RouterBean(
      "/transformabout",
      "变换 Transform",
      "container",
      (context) => TransformAbout(
            title: "变换 Transform",
          ),
    ),
    RouterBean(
      "/containerabout",
      "Container 容器",
      "container",
      (context) => ContainerAbout(
            title: "Container 容器",
          ),
    ),
    RouterBean(
      "/materialcontainerabout",
      "Scaffold、TabBar、底部导航",
      "container",
      (context) => MaterialContainerAbout(
            title: "Scaffold、TabBar、底部导航",
          ),
    ),
    RouterBean(
      "/singlechildscrollview",
      "SingleChildScrollView",
      "scroll",
      (context) => SingleChildScrollAbout(
            title: "SingleChildScrollView",
          ),
    ),
    RouterBean(
      "/listviewabout",
      "ListView",
      "scroll",
      (context) => ListViewAbout(
            title: "ListView",
          ),
    ),
    RouterBean(
      "/gridviewabout",
      "GridView",
      "scroll",
      (context) => GridViewAbout(
            title: "GridView",
          ),
    ),
    RouterBean(
      "/customscrollviewabout",
      "CustomScrollView",
      "scroll",
      (context) => CustomScrollViewAbout(
            title: "CustomScrollView",
          ),
    ),
    RouterBean(
      "/scrollcontrollerabout",
      "滚动监听及控制ScrollController",
      "scroll",
      (context) => ScrollControllerAbout(
            title: "滚动监听及控制ScrollController",
          ),
    ),
    RouterBean(
      "/willpopscopeabout",
      "导航返回拦截-WillPopScope",
      "function",
      (context) => WillPopScopeAbout(
            title: "导航返回拦截-WillPopScope",
          ),
    ),
    RouterBean(
      "/inheritedwidgetabout",
      "数据共享-InheritedWidget",
      "function",
      (context) => InheritedWidgetAbout(
            title: "数据共享-InheritedWidget",
          ),
    ),
    RouterBean(
      "/themeabout",
      "主题-Theme",
      "function",
      (context) => ThemeAbout(
            title: "主题-Theme",
          ),
    ),
    RouterBean(
      "/pointereventabout",
      "原始指针事件处理",
      "eventAndNotification",
      (context) => PointerEventAbout(
            title: "原始指针事件处理",
          ),
    ),
    RouterBean(
      "/gestureabout",
      "手势识别",
      "eventAndNotification",
      (context) => GestureAbout(
            title: "手势识别",
          ),
    ),
    RouterBean(
      "/eventbusabout",
      "全局事件总线",
      "eventAndNotification",
      (context) => EventBusAbout(
            title: "全局事件总线",
          ),
    ),
    RouterBean(
      "/notificationabout",
      "通知Notification",
      "eventAndNotification",
      (context) => NotificationAbout(
            title: "通知Notification",
          ),
    ),
    RouterBean(
      "/basicanimationstructureabout",
      "动画结构",
      "animation",
      (context) => BasicAnimationStructureAbout(
            title: "动画结构",
          ),
    ),
    RouterBean(
      "/pagechangeanimationabout",
      "自定义路由过渡动画",
      "animation",
      (context) => PageChangeAnimationAbout(
            title: "自定义路由过渡动画",
          ),
    ),
    RouterBean(
      "/heroanimationabout",
      "Hero动画",
      "animation",
      (context) => HeroAnimationAbout(
            title: "Hero动画",
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
          .map((item) => HomeMenuChildItem(item.name, item.router))
          .toList();
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
