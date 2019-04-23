import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_starter_notes/config/RouterConfig.dart';
import 'package:flutter_starter_notes/i10n/localization_intl.dart';
import 'package:flutter_starter_notes/ui/LocalizationAbout.dart';

void main() {
  debugPaintSizeEnabled = false; //打开视觉调试开关
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //显示应用性能图
      //showPerformanceOverlay: true,
      //显示Material网格线，帮助对齐
      //debugShowMaterialGrid: true,
      title: 'Flutter Starter Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: RouterConfig.genRouters(),
      // Material 和 widgets 支持多语言
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        // 注册我们的Delegate
        DemoLocalizationsDelegate(),
        // 注册基于 intl 生成的 Delegate
        IntlLocalizationsDelegate()
      ],
      supportedLocales: [
        const Locale("en", "US"),
        const Locale("zh", "CN"),
      ],
      //locale: const Locale('en', 'US'), //手动指定 locale
    );
  }
}
