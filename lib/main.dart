import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_starter_notes/ui/ButtonAbout.dart';
import 'package:flutter_starter_notes/ui/HomePage.dart';
import 'package:flutter_starter_notes/ui/TextAbout.dart';

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
              title: "Button 相关",
            ),
      },
    );
  }
}
