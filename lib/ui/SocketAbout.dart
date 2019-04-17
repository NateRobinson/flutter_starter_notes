import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class SocketAbout extends StatelessWidget {
  SocketAbout({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CommonTitle('Socket 介绍'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "我们之前介绍的 Http 协议和 WebSocket 协议都属于应用层协议，除了它们，应用层协议还有很多如：SMTP、FTP 等，它们都是通过 Socket 实现的"),
            ),
            CommonTitle('Socket 示例'),
            SocketHttpWidget()
          ],
        ),
      ),
    );
  }
}

class SocketHttpWidget extends StatefulWidget {
  @override
  SocketHttpWidgetState createState() {
    return SocketHttpWidgetState();
  }
}

class SocketHttpWidgetState extends State<SocketHttpWidget> {
  String _response = "Loading";

  _request() async {
    _response = "Loading";
    setState(() {});
    //建立连接
    var socket = await Socket.connect("baidu.com", 80);
    //根据http协议，发送请求头
    socket.writeln("GET / HTTP/1.1");
    socket.writeln("Host:baidu.com");
    socket.writeln("Connection:close");
    socket.writeln();
    await socket.flush(); //发送
    //读取返回内容
    _response = await socket.transform(utf8.decoder).join();
    setState(() {});
    await socket.close();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Text(this._response),
          ),
        ),
        OutlineButton(
          onPressed: _request,
          child: Text('Request'),
        )
      ],
    );
  }
}
