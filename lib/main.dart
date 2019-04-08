import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_starter_notes/config/RouterConfig.dart';

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
      routes: RouterConfig.genRouters(),
    );
  }
}
