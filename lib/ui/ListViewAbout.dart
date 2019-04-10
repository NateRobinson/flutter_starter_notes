import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/ui/listview/ListView-builder.dart';
import 'package:flutter_starter_notes/ui/listview/ListView-default.dart';
import 'package:flutter_starter_notes/ui/listview/ListView-fixed-top.dart';
import 'package:flutter_starter_notes/ui/listview/ListView-infinite.dart';
import 'package:flutter_starter_notes/ui/listview/ListView-separated.dart';

class ListViewAbout extends StatelessWidget {
  ListViewAbout({Key key, this.title});

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
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                ListViewDefault(title: "ListView 默认构造函数")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('ListView 默认构造函数'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                ListViewBuilder(title: "ListView.builder")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('ListView.builder'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                ListViewSeparated(title: "ListView.separated")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('ListView.separated'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                ListViewInfinite(title: "ListView 自动加载下一页")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("ListView 自动加载下一页"),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                ListViewFixedTop(title: "ListView 固定头部")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("ListView 固定头部"),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
