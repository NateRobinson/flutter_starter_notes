import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class DioAbout extends StatelessWidget {
  DioAbout({Key key, this.title});

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
            CommonTitle('Dio http 库简化之前的 HttpClient'),
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
                      Dio dio = new Dio();
                      Response response = await dio.get("https://www.baidu.com",
                          options: Options(headers: {
                            "user-agent":
                                "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1"
                          }));
                      _text = response.data.toString();
                      print(response.headers);
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
