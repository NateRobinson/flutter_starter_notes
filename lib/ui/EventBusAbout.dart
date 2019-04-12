import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';
import 'package:flutter_starter_notes/ui/eventbus/EventBus.dart';

class EventBusAbout extends StatelessWidget {
  EventBusAbout({Key key, this.title});

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
            CommonTitle("EventBus 介绍与使用"),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "在APP中，我们经常会需要一个广播机制，用以跨页面事件通知，比如一个需要登录的APP中，页面会关注用户登录或注销事件，来进行一些状态更新。"),
            ),
            RaisedButton(
              onPressed: () => {
                    //触发修改标题的 Event，首页监听到后会更改标题
                    bus.emit("chanageTitle", "")
                  },
              child: Text("通知首页修改标题"),
            )
          ],
        ),
      ),
    );
  }
}
