import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/ui/BasicAnimationStructureAbout.dart';
import 'package:flutter_starter_notes/ui/BoxAbout.dart';
import 'package:flutter_starter_notes/ui/ButtonAbout.dart';
import 'package:flutter_starter_notes/ui/CircleProgressWidgetAbout.dart';
import 'package:flutter_starter_notes/ui/CombinationWidgetAbout.dart';
import 'package:flutter_starter_notes/ui/ContainerAbout.dart';
import 'package:flutter_starter_notes/ui/CustomPaintAbout.dart';
import 'package:flutter_starter_notes/ui/CustomScrollViewAbout.dart';
import 'package:flutter_starter_notes/ui/DecoratedBoxAbout.dart';
import 'package:flutter_starter_notes/ui/DioAbout.dart';
import 'package:flutter_starter_notes/ui/EventBusAbout.dart';
import 'package:flutter_starter_notes/ui/FileOperationAbout.dart';
import 'package:flutter_starter_notes/ui/FlexAbout.dart';
import 'package:flutter_starter_notes/ui/GestureAbout.dart';
import 'package:flutter_starter_notes/ui/GridViewAbout.dart';
import 'package:flutter_starter_notes/ui/HeroAnimationAbout.dart';
import 'package:flutter_starter_notes/ui/HomePage.dart';
import 'package:flutter_starter_notes/ui/HttpClientAbout.dart';
import 'package:flutter_starter_notes/ui/ImageAndIconAbout.dart';
import 'package:flutter_starter_notes/ui/InheritedWidgetAbout.dart';
import 'package:flutter_starter_notes/ui/InputAndFormAbout.dart';
import 'package:flutter_starter_notes/ui/IntlAbout.dart';
import 'package:flutter_starter_notes/ui/ListViewAbout.dart';
import 'package:flutter_starter_notes/ui/LocalizationAbout.dart';
import 'package:flutter_starter_notes/ui/MaterialContainerAbout.dart';
import 'package:flutter_starter_notes/ui/NotificationAbout.dart';
import 'package:flutter_starter_notes/ui/PaddingAbout.dart';
import 'package:flutter_starter_notes/ui/PageChangeAnimationAbout.dart';
import 'package:flutter_starter_notes/ui/PluginDevelopAbout.dart';
import 'package:flutter_starter_notes/ui/PointerEventAbout.dart';
import 'package:flutter_starter_notes/ui/RowAndColumnAbout.dart';
import 'package:flutter_starter_notes/ui/ScrollControllerAbout.dart';
import 'package:flutter_starter_notes/ui/SingleChildScrollAbout.dart';
import 'package:flutter_starter_notes/ui/SocketAbout.dart';
import 'package:flutter_starter_notes/ui/StackAndPositionedAbout.dart';
import 'package:flutter_starter_notes/ui/StaggeredAnimationAbout.dart';
import 'package:flutter_starter_notes/ui/SwitchAndCheckBoxAbout.dart';
import 'package:flutter_starter_notes/ui/TextAbout.dart';
import 'package:flutter_starter_notes/ui/ThemeAbout.dart';
import 'package:flutter_starter_notes/ui/TransformAbout.dart';
import 'package:flutter_starter_notes/ui/TurnBoxAbout.dart';
import 'package:flutter_starter_notes/ui/WebSocketAbout.dart';
import 'package:flutter_starter_notes/ui/WillPopScopeAbout.dart';
import 'package:flutter_starter_notes/ui/WrapAndFlowAbout.dart';

class RouterConfig {
  static Map<String, String> keys = {
    "basic": "1. 基础 Widgets",
    "layout": "2. 布局类 Widgets",
    "container": "3. 容器类 Widgets",
    "scroll": "4. 可滚动 Widgets",
    "function": "5. 功能型 Widgets",
    "eventAndNotification": "6. 事件处理与通知",
    "animation": "7. 动画",
    "custom": "8. 自定义 Widgets",
    "fileAndHttp": "9. 文件操作与网络请求",
    "packageAndPlugin": "10. 包与插件",
    "localization": "11. 国际化",
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
      "1.1 文本及字体样式",
      "basic",
      (context) => TextAbout(
            title: "文本及字体样式",
          ),
    ),
    RouterBean(
      "/buttonabout",
      "1.2 按钮",
      "basic",
      (context) => ButtonAbout(
            title: "按钮",
          ),
    ),
    RouterBean(
      "/imageandiconabout",
      "1.3 图片及 Icon",
      "basic",
      (context) => ImageAndIconAbout(
            title: "图片及 Icon",
          ),
    ),
    RouterBean(
      "/switchandcheckboxabout",
      "1.4 单选开关和复选框",
      "basic",
      (context) => SwitchAndCheckBoxAbout(
            title: "单选开关和复选框",
          ),
    ),
    RouterBean(
      "/inputandformabout",
      "1.5 输入框及表单",
      "basic",
      (context) => InputAndFormAbout(
            title: "输入框及表单",
          ),
    ),
    RouterBean(
      "/rowandcolumnabout",
      "2.1 线性布局 Row, Column",
      "layout",
      (context) => RowAndColumnAbout(
            title: "线性布局 Row, Column",
          ),
    ),
    RouterBean(
      "/flexabout",
      "2.2 弹性布局 Flex",
      "layout",
      (context) => FlexAbout(
            title: "弹性布局 Flex",
          ),
    ),
    RouterBean(
      "/wrapandflowabout",
      "2.3 流式布局 Wrap, Flow",
      "layout",
      (context) => WrapAndFlowAbout(
            title: "流式布局 Wrap, Flow",
          ),
    ),
    RouterBean(
      "/stackandpositionedabout",
      "2.4 层叠布局 Stack, Positioned",
      "layout",
      (context) => StackAndPositionedAbout(
            title: "层叠布局 Stack, Positioned",
          ),
    ),
    RouterBean(
      "/paddingabout",
      "3.1 Padding",
      "container",
      (context) => PaddingAbout(
            title: "Padding",
          ),
    ),
    RouterBean(
      "/boxabout",
      "3.2 布局限制类容器 ConstrainedBox, SizeBox",
      "container",
      (context) => BoxAbout(
            title: "布局限制类容器 ConstrainedBox, SizeBox",
          ),
    ),
    RouterBean(
      "/decoratedboxabout",
      "3.3 装饰容器 DecoratedBox",
      "container",
      (context) => DecoratedBoxAbout(
            title: "装饰容器 DecoratedBox",
          ),
    ),
    RouterBean(
      "/transformabout",
      "3.4 变换 Transform",
      "container",
      (context) => TransformAbout(
            title: "变换 Transform",
          ),
    ),
    RouterBean(
      "/containerabout",
      "3.5 Container 容器",
      "container",
      (context) => ContainerAbout(
            title: "Container 容器",
          ),
    ),
    RouterBean(
      "/materialcontainerabout",
      "3.6 Scaffold、TabBar、底部导航",
      "container",
      (context) => MaterialContainerAbout(
            title: "Scaffold、TabBar、底部导航",
          ),
    ),
    RouterBean(
      "/singlechildscrollview",
      "4.1 SingleChildScrollView",
      "scroll",
      (context) => SingleChildScrollAbout(
            title: "SingleChildScrollView",
          ),
    ),
    RouterBean(
      "/listviewabout",
      "4.2 ListView",
      "scroll",
      (context) => ListViewAbout(
            title: "ListView",
          ),
    ),
    RouterBean(
      "/gridviewabout",
      "4.3 GridView",
      "scroll",
      (context) => GridViewAbout(
            title: "GridView",
          ),
    ),
    RouterBean(
      "/customscrollviewabout",
      "4.4 CustomScrollView",
      "scroll",
      (context) => CustomScrollViewAbout(
            title: "CustomScrollView",
          ),
    ),
    RouterBean(
      "/scrollcontrollerabout",
      "4.5 滚动监听及控制ScrollController",
      "scroll",
      (context) => ScrollControllerAbout(
            title: "滚动监听及控制ScrollController",
          ),
    ),
    RouterBean(
      "/willpopscopeabout",
      "5.1 导航返回拦截-WillPopScope",
      "function",
      (context) => WillPopScopeAbout(
            title: "导航返回拦截-WillPopScope",
          ),
    ),
    RouterBean(
      "/inheritedwidgetabout",
      "5.2 数据共享-InheritedWidget",
      "function",
      (context) => InheritedWidgetAbout(
            title: "数据共享-InheritedWidget",
          ),
    ),
    RouterBean(
      "/themeabout",
      "5.3 主题-Theme",
      "function",
      (context) => ThemeAbout(
            title: "主题-Theme",
          ),
    ),
    RouterBean(
      "/pointereventabout",
      "6.1 原始指针事件处理",
      "eventAndNotification",
      (context) => PointerEventAbout(
            title: "原始指针事件处理",
          ),
    ),
    RouterBean(
      "/gestureabout",
      "6.2 手势识别",
      "eventAndNotification",
      (context) => GestureAbout(
            title: "手势识别",
          ),
    ),
    RouterBean(
      "/eventbusabout",
      "6.3 全局事件总线",
      "eventAndNotification",
      (context) => EventBusAbout(
            title: "全局事件总线",
          ),
    ),
    RouterBean(
      "/notificationabout",
      "6.4 通知Notification",
      "eventAndNotification",
      (context) => NotificationAbout(
            title: "通知Notification",
          ),
    ),
    RouterBean(
      "/basicanimationstructureabout",
      "7.1 动画结构",
      "animation",
      (context) => BasicAnimationStructureAbout(
            title: "动画结构",
          ),
    ),
    RouterBean(
      "/pagechangeanimationabout",
      "7.2 自定义路由过渡动画",
      "animation",
      (context) => PageChangeAnimationAbout(
            title: "自定义路由过渡动画",
          ),
    ),
    RouterBean(
      "/heroanimationabout",
      "7.3 Hero 动画",
      "animation",
      (context) => HeroAnimationAbout(
            title: "Hero 动画",
          ),
    ),
    RouterBean(
      "/staggeredanimationabout",
      "7.4 交错动画",
      "animation",
      (context) => StaggeredAnimationAbout(
            title: "交错动画",
          ),
    ),
    RouterBean(
      "/combinationwidgetabout",
      "8.1 通过组合现有 Widget 实现",
      "custom",
      (context) => CombinationWidgetAbout(
            title: "通过组合现有 Widget 实现",
          ),
    ),
    RouterBean(
      "/turnboxabout",
      "8.2 实例：TurnBox",
      "custom",
      (context) => TurnBoxAbout(
            title: "实例：TurnBox",
          ),
    ),
    RouterBean(
      "/custompaintabout",
      "8.3 CustomPaint 与 Canvas",
      "custom",
      (context) => CustomPaintAbout(
            title: "CustomPaint 与 Canvas",
          ),
    ),
    RouterBean(
      "/circleprogresswidgetabout",
      "8.4 实例：圆形渐变进度条(自绘)",
      "custom",
      (context) => CircleProgressWidgetAbout(
            title: "实例：圆形渐变进度条(自绘)",
          ),
    ),
    RouterBean(
      "/fileoperationabout",
      "9.1 文件操作",
      "fileAndHttp",
      (context) => FileOperationAbout(
            title: "文件操作",
          ),
    ),
    RouterBean(
      "/httpclientabout",
      "9.2 Http请求-HttpClient",
      "fileAndHttp",
      (context) => HttpClientAbout(
            title: "Http请求-HttpClient",
          ),
    ),
    RouterBean(
      "/dioabout",
      "9.3 Http请求-Dio package",
      "fileAndHttp",
      (context) => DioAbout(
            title: "Http请求-Dio package",
          ),
    ),
    RouterBean(
      "/websocketabout",
      "9.4 WebSocket",
      "fileAndHttp",
      (context) => WebSocketAbout(
            title: "WebSocket",
          ),
    ),
    RouterBean(
      "/socketabout",
      "9.5 使用Socket API",
      "fileAndHttp",
      (context) => SocketAbout(
            title: "使用Socket API",
          ),
    ),
    RouterBean(
      "/plugindevelopabout",
      "10.1 插件开发",
      "packageAndPlugin",
      (context) => PluginDevelopAbout(
            title: "插件开发",
          ),
    ),
    RouterBean(
      "/localizationabout",
      "11.1 实现 Localizations",
      "localization",
      (context) => LocalizationAbout(
            title: "实现 Localizations",
          ),
    ),
    RouterBean(
      "/intlabout",
      "11.2 使用 Intl 包",
      "localization",
      (context) => IntlAbout(
            title: "使用 Intl 包",
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
