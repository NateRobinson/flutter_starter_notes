import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class InheritedWidgetAbout extends StatelessWidget {
  InheritedWidgetAbout({Key key, this.title});

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
            CommonTitle('InheritedWidget 介绍与示例'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "InheritedWidget是Flutter中非常重要的一个功能型Widget，它可以高效的将数据在Widget树中向下传递、共享，这在一些需要在Widget树中共享数据的场景中非常方便，如Flutter中，正是通过InheritedWidget来共享应用主题(Theme)和Locale(当前语言环境)信息的。"),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  "1. heritedWidget和React中的context功能类似，和逐级传递数据相比，它们能实现组件跨级传递数据。\n2. InheritedWidget的在Widget树中数据传递方向是从上到下的，这和Notification的传递方向正好相反"),
            ),
            InheritedWidgetTestRoute()
          ],
        ),
      ),
    );
  }
}

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  final int data; //需要在子树中共享的数据，保存点击次数

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static ShareDataWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ShareDataWidget);
  }

  //该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(ShareDataWidget old) {
    //如果返回true，则子树中依赖(build函数中有调用)本widget
    //的子widget的`state.didChangeDependencies`会被调用
    return old.data != data;
  }
}

class _TestWidget extends StatefulWidget {
  @override
  __TestWidgetState createState() => new __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {
  @override
  Widget build(BuildContext context) {
    //使用InheritedWidget中的共享数据
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("Dependencies change");
  }
}

class InheritedWidgetTestRoute extends StatefulWidget {
  @override
  _InheritedWidgetTestRouteState createState() =>
      new _InheritedWidgetTestRouteState();
}

class _InheritedWidgetTestRouteState extends State<InheritedWidgetTestRoute> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShareDataWidget(
        //使用ShareDataWidget
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: _TestWidget(), //子widget中依赖ShareDataWidget
            ),
            RaisedButton(
              child: Text("Increment"),
              //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
              onPressed: () => setState(() => ++count),
            )
          ],
        ),
      ),
    );
  }
}
