import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/ui/HomePage.dart';
import 'package:flutter_starter_notes/ui/TextAbout.dart';
import 'package:flutter_starter_notes/ui/ButtonAbout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
        '/textabout': (context) => TextAbout(title: "Text 相关",),
        '/buttonabout': (context) => ButtonAbout(title: "Button 相关",),
      },
    );
  }
}
