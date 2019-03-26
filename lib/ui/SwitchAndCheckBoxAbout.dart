import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class SwitchAndCheckBoxAbout extends StatelessWidget {
  SwitchAndCheckBoxAbout({Key key, this.title});

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
            CommonTitle('Switch 和 Checkbox 示例'),
            Container(
              padding: EdgeInsets.all(10),
              child: SwitchAndCheckBoxTestRoute(),
            )
          ],
        ),
      ),
    );
  }
}

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() =>
      new _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _selected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _selected, //当前状态
          onChanged: (value) {
            print('Switch' + value.toString());
            //重新构建页面
            setState(() {
              _selected = value;
            });
          },
        ),
        Checkbox(
          value: _selected,
          activeColor: Colors.red, //选中时的颜色
          onChanged: (value) {
            print('Checkbox' + value.toString());
            setState(() {
              _selected = value;
            });
          },
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(_selected ? "打开" : "关闭"),
        )
      ],
    );
  }
}
