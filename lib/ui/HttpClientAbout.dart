import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class HttpClientAbout extends StatelessWidget {
  HttpClientAbout({Key key, this.title});

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
            CommonTitle('HttpClient发起请求分为五步'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                  """1. 创建一个HttpClient:\nHttpClient httpClient = new HttpClient();"""),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  """2. 打开Http连接，设置请求:\nHttpClientRequest request = await httpClient.getUrl(uri);\n还可以设置 header: \nrequest.headers.add("user-agent", "test");\n设置request body：\nString payload="...";
request.add(utf8.encode(payload)); 
//request.addStream(_inputStream); //可以直接添加输入流"""),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  """3. 等待连接服务器:\nHttpClientResponse response = await request.close();"""),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  """4. 读取响应内容:\nString responseBody = await response.transform(utf8.decoder).join();"""),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text("""5. 请求结束，关闭HttpClient:\nhttpClient.close();"""),
            ),
            CommonTitle('HttpClient 示例'),
            HttpTestRoute()
          ],
        ),
      ),
    );
  }
}

class HttpTestRoute extends StatefulWidget {
  @override
  _HttpTestRouteState createState() => new _HttpTestRouteState();
}

class _HttpTestRouteState extends State<HttpTestRoute> {
  bool _loading = false;
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
            child: Text("获取百度首页"),
            onPressed: _loading
                ? null
                : () async {
                    setState(() {
                      _loading = true;
                      _text = "正在请求...";
                    });
                    try {
                      //1. 创建一个HttpClient
                      HttpClient httpClient = new HttpClient();
                      //3. 打开Http连接
                      HttpClientRequest request = await httpClient
                          .getUrl(Uri.parse("https://www.baidu.com"));
                      //使用iPhone的UA
                      request.headers.add("user-agent",
                          "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
                      //3. 等待连接服务器（会将请求信息发送给服务器）
                      HttpClientResponse response = await request.close();
                      //4. 读取响应内容
                      _text = await response.transform(utf8.decoder).join();
                      //输出响应头
                      print(response.headers);

                      //5. 关闭client后，通过该client发起的所有请求都会中止。
                      httpClient.close();
                    } catch (e) {
                      _text = "请求失败：$e";
                    } finally {
                      setState(() {
                        _loading = false;
                      });
                    }
                  }),
        Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(_text.replaceAll(new RegExp(r"\s"), "")))
      ],
    );
  }
}
